/**
 * @Author:      wangchao
 * @DateTime:    2018-11-19 11:02:54
 * @Description: 生产环境
 */
module.exports = file => () => import('../views/' + file + '.vue')
