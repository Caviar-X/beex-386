--[[
    请在此编辑你的喜好设置
    网站icon请将favicon.ico放入网站的static文件夹中
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
    prism_theme = '',
    -- example: prism_theme = 'coy'

    --是否开启tweet,详见README.md
    enable_tweet = true,

    --页脚是否显示主题&beex有关信息
    theme_relate = true,

    --文章过期警告日期(若不启用请设置为-1)
    outdate_day = -1,
    --友人账
    -- label:友链名称
    -- link:友链url
    -- description: 友链简介(应该支持html)
    friends = {
        {
            label = "example",
            link = "http://www.example.com/",
            description = "example description"
        },
    },

    --联系方式
    --icon: 详见./static/social，icon字段在html中将会以{{icon}}.svg的形式展现
    contacts = {
        {
            icon = "email",
            url = "mailto:example@example.com"
        }
    }
}

--目前不需要设置其他字段
function Theme_context(args)
    args.context.theme_ctx = config
    return args
end

beex:add_filter("gen_before_render_html", "Theme_context")
