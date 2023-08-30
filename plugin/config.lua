local config = {
    --站点开始运行的年份
    begin_year = 2023,

    --自定义html头
    custom_head = [[

    ]],

    --是否启用行模式光标
    magic_cursor = true,
}


function Theme_context(ctx)
    ctx.theme_ctx = config
    return ctx
end

beex:add_filter("gen_before_render_html", "Theme_context")
