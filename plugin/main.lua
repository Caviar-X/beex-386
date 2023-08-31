local config = {
    --站点开始运行的年份
    begin_year = 2023,

    --自定义html头
    custom_head = [[

    ]],

    --是否启用行模式光标
    magic_cursor = true,
}


function Theme_context(args)
    args.context.theme_ctx = {
        magic_cursor = config.magic_cursor,
        custom_head = config.custom_head,
        begin_year = config.begin_year
    }
    return args
end
beex:add_filter("gen_before_render_html", "Theme_context")
