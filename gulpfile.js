/// <binding />
"use strict";
var gulp = require("gulp");
var debug = require('gulp-debug');

var BOWER_COMPONENTS = global.BowerComponents || "wwwroot/lib";

gulp.task('appsettings', function() {
        return gulp.src(['./' + BOWER_COMPONENTS + '/iUS.AppSettings/*.json'])
            .pipe(debug())
            .pipe(gulp.dest('./'));
});
