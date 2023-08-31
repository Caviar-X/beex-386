--[[
    请在此编辑你的喜好设置
]]
local config = {
    --站点开始运行的年份
    begin_year = 2023,

    --自定义html头
    custom_head = [[

    ]],

    --是否启用行模式光标
    magic_cursor = true,

    --prism.js主题名，具体可以参照prismjs.com 默认主题留空即可,
    prism_theme = ''
}


function Theme_context(args)
    args.context.theme_ctx = {
        magic_cursor = config.magic_cursor,
        custom_head = config.custom_head,
        begin_year = config.begin_year,
        prism_theme = config.prism_theme
    }
    return args
end


beex:add_filter("gen_before_render_html", "Theme_context")
