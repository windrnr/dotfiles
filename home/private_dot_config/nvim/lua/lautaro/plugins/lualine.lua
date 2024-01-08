return {

    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            local lualine = require('lualine')

            local colors = {
                bg       = '#202328',
                fg       = '#bbc2cf',
                yellow   = '#fabd2f',
                cyan     = '#008080',
                darkblue = '#081633',
                green    = '#b8bb26',
                -- orange   = '#FF8800',
                orange   = '#d65d0e',
                violet   = '#a9a1e1',
                magenta  = '#d3869b',
                blue     = '#6CB4EE',
                red      = '#ec5f67',
                white    = '#ffffff',
            }

            local conditions = {
                buffer_not_empty = function()
                    return vim.fn.empty(vim.fn.expand('%:t')) ~= 1
                end,
                hide_in_width = function()
                    return vim.fn.winwidth(0) > 80
                end,
                check_git_workspace = function()
                    local filepath = vim.fn.expand('%:p:h')
                    local gitdir = vim.fn.finddir('.git', filepath .. ';')
                    return gitdir and #gitdir > 0 and #gitdir < #filepath
                end,
            }

            local config = {
                options = {
                    component_separators = '',
                    section_separators = '',
                    theme = {
                        normal = { c = { fg = colors.fg, bg = colors.bg } },
                        inactive = { c = { fg = colors.fg, bg = colors.bg } },
                    },
                },
                sections = {
                    lualine_a = {},
                    lualine_b = {},
                    lualine_y = {},
                    lualine_z = {},
                    lualine_c = {},
                    lualine_x = {},
                },
                inactive_sections = {
                    lualine_a = {},
                    lualine_b = {},
                    lualine_y = {},
                    lualine_z = {},
                    lualine_c = {},
                    lualine_x = {},
                },
            }

            local function ins_left(component)
                table.insert(config.sections.lualine_c, component)
            end

            local function ins_right(component)
                table.insert(config.sections.lualine_x, component)
            end

            local mode_colors = function()
                local mode_color = {
                    n = colors.blue,
                    i = colors.green,

                    v = colors.magenta,
                    [''] = colors.magenta,
                    V = colors.magenta,

                    c = colors.orange,
                    no = colors.red,
                    s = colors.orange,
                    S = colors.orange,
                    [''] = colors.orange,
                    ic = colors.yellow,
                    R = colors.violet,
                    Rv = colors.violet,
                    cv = colors.red,
                    ce = colors.red,
                    r = colors.cyan,
                    rm = colors.cyan,
                    ['r?'] = colors.cyan,
                    ['!'] = colors.red,
                    t = colors.red,
                }

                return mode_color[vim.fn.mode()]
            end

            ins_left {
                function()
                    -- return '●'
                    -- return '⨁'
                    return '⬤'
                end,
                color = function()
                    return { fg = mode_colors() }
                end,
                padding = { right = 1,
                    left = 1 },
            }

            ins_left {
                'filename',
                cond = conditions.buffer_not_empty,
                color = { fg = colors.white, gui = 'bold' },
            }

            ins_left {
                "location"
            }

            ins_right {
                function()
                    local msg = 'No Active Lsp'
                    local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
                    local clients = vim.lsp.get_active_clients()
                    if next(clients) == nil then
                        return msg
                    end
                    for _, client in ipairs(clients) do
                        local filetypes = client.config.filetypes
                        if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                            return client.name
                        end
                    end
                    return msg
                end,
                -- icon = 'LSP:',
                color = { fg = colors.white, gui = 'bold' },
            }


            ins_right {
                'fileformat',
                fmt = string.upper,
                icons_enabled = false,
                color = { fg = colors.yellow, gui = 'bold' },
            }

            ins_right {
                'branch',
                icon = "⤷",
                color = { fg = colors.orange, gui = 'bold' },
            }

            ins_right {
                function()
                    return '▊'
                end,
                color = function()
                    return { fg = mode_colors() }
                end,
                padding = {
                    left = 1 },
            }

            -- Now don't forget to initialize lualine
            lualine.setup(config)
        end
    }
}
