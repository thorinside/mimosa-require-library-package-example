(function () {
define('testclient',["jquery"],function(){var e;return e=function(){function e(e){this.greeting=e,alert(this.greeting)}return e}()});define(['testclient'], function(lib) {
  return lib;
});
})()