const base = {
    get() {
        return {
            url : "http://localhost:8080/ssmz87c4/",
            name: "ssmz87c4",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssmz87c4/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "基于协同过滤算法的图书推荐系统"
        } 
    }
}
export default base
