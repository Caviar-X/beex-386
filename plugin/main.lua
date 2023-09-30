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
    outdate_day = 100,

    --友人账
    -- label:友链名称
    -- link:友链url
    -- description: 友链简介(应该支持html)
    friends = {
        {
            label = "特厉害",
            link = "http://www.telihai.com/",
            description = "真的很厉害"
        },
        {
            label = "gjz010",
            link = "https://www.gjz010.com/",
            description = "没有什么信息"
        },
        {
            label = "Alias Qi",
            link = "https://alias.qliphoth.tech/",
            description = "力量恢复中"
        },
    },
    --联系方式
    --icon: 详见./static/social
    contacts = {
        {
            icon = "reddit",
            url = "https://www.reddit.com/user/ConnectToInternet"
        },
        {
            icon = "matrix",
            url = "https://matrix.to/#/@caviar-x:mozilla.org"
        },
        {
            icon = "email",
            url = "mailto:caviarx@163.com"
        },
        {
            icon = "github",
            url = "https://github.com/Caviar-X"
        }
    }
}

--目前不需要设置其他字段
function Theme_context(args)
    args.context.theme_ctx = config
    return args
end


beex:add_filter("gen_before_render_html", "Theme_context")
