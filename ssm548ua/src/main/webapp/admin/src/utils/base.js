const base = {
    get() {
                return {
            url : "http://localhost:8080/ssm548ua/",
            name: "ssm548ua",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssm548ua/front/index.html'
        };
            },
    getProjectName(){
        return {
            projectName: "电影院购票平台小程序"
        } 
    }
}
export default base
