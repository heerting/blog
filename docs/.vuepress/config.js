module.exports = {
    title: '博客文档',
    description: 'sister的博客文档',
    themeConfig: {
        nav: [
            { text: '首页', link: '/' },
            {
                text: 'heyiting的博客',
                items: [
                    { text: 'Github', link: 'https://github.com' },
                    { text: '掘金', link: 'https://juejin.cn' }
                ]
            }
        ],
        sidebar: [
            {
                title: '请进heerting blog',
                path: '/',
                collapsable: false,
                children: [
                    { title: '开始必读', path: '/' }
                ]
            }
        ]
    }
}