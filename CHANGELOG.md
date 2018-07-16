# Changelog

All notable changes to this project will be documented in this file.
Each new release typically also includes the latest modulesync defaults.
These should not affect the functionality of the module.

## [v2.0.0](https://github.com/voxpupuli/puppet-wget/tree/v2.0.0) (2018-07-16)

[Full Changelog](https://github.com/voxpupuli/puppet-wget/compare/v1.7.3...v2.0.0)

**Closed issues:**

- Module being maintained? [\#91](https://github.com/voxpupuli/puppet-wget/issues/91)

**Merged pull requests:**

- Fixing package source not found on FreeBSD. [\#80](https://github.com/voxpupuli/puppet-wget/pull/80) ([madelaney](https://github.com/madelaney))
- Add 'group' option and document 'execuser' [\#76](https://github.com/voxpupuli/puppet-wget/pull/76) ([luyseyal](https://github.com/luyseyal))

## [v1.7.3](https://github.com/voxpupuli/puppet-wget/tree/v1.7.3) (2016-03-01)

[Full Changelog](https://github.com/voxpupuli/puppet-wget/compare/v1.7.2...v1.7.3)

**Closed issues:**

- Error: Invalid parameter unless on Wget::Fetch [\#71](https://github.com/voxpupuli/puppet-wget/issues/71)

**Merged pull requests:**

- Make compatible with strict variables. [\#66](https://github.com/voxpupuli/puppet-wget/pull/66) ([BobVincentatNCRdotcom](https://github.com/BobVincentatNCRdotcom))
- Changed fetch exec require from Class to Package [\#63](https://github.com/voxpupuli/puppet-wget/pull/63) ([drewhemm](https://github.com/drewhemm))

## [v1.7.2](https://github.com/voxpupuli/puppet-wget/tree/v1.7.2) (2016-02-17)

[Full Changelog](https://github.com/voxpupuli/puppet-wget/compare/v1.7.1...v1.7.2)

**Closed issues:**

- Errors when enabling strict\_variables [\#62](https://github.com/voxpupuli/puppet-wget/issues/62)
- feature: Do not manage wget package [\#55](https://github.com/voxpupuli/puppet-wget/issues/55)
- Add a $destination\_dir param [\#51](https://github.com/voxpupuli/puppet-wget/issues/51)
- specify http\_proxy information as wget::fetch attribute [\#45](https://github.com/voxpupuli/puppet-wget/issues/45)
- Windows redownload fails? [\#35](https://github.com/voxpupuli/puppet-wget/issues/35)

**Merged pull requests:**

- Added custom unless option [\#60](https://github.com/voxpupuli/puppet-wget/pull/60) ([apazga](https://github.com/apazga))
- Improvement to $destination param \(issue \#51\) [\#58](https://github.com/voxpupuli/puppet-wget/pull/58) ([seanscottking](https://github.com/seanscottking))
- Issue \#55 Add Param manage\_package [\#57](https://github.com/voxpupuli/puppet-wget/pull/57) ([mkrakowitzer](https://github.com/mkrakowitzer))

## [v1.7.1](https://github.com/voxpupuli/puppet-wget/tree/v1.7.1) (2015-08-20)

[Full Changelog](https://github.com/voxpupuli/puppet-wget/compare/v1.7.0...v1.7.1)

**Closed issues:**

- File does not get updated when the file is updated [\#52](https://github.com/voxpupuli/puppet-wget/issues/52)
- Not working in Windows [\#43](https://github.com/voxpupuli/puppet-wget/issues/43)
- destination file's permission can't be edited [\#37](https://github.com/voxpupuli/puppet-wget/issues/37)
- Do not download if wget::fetch { redownload =\> false } [\#26](https://github.com/voxpupuli/puppet-wget/issues/26)
- Disable .wgetrc files [\#25](https://github.com/voxpupuli/puppet-wget/issues/25)
- Add support for headers or cookies [\#19](https://github.com/voxpupuli/puppet-wget/issues/19)

**Merged pull requests:**

- Update to work on Windows [\#54](https://github.com/voxpupuli/puppet-wget/pull/54) ([mirthy](https://github.com/mirthy))
- Pass schedule metaparam down to resources. [\#46](https://github.com/voxpupuli/puppet-wget/pull/46) ([robbat2](https://github.com/robbat2))
- Add parameter to set file mode on destination [\#44](https://github.com/voxpupuli/puppet-wget/pull/44) ([mcallaway](https://github.com/mcallaway))

## [v1.7.0](https://github.com/voxpupuli/puppet-wget/tree/v1.7.0) (2015-05-01)

[Full Changelog](https://github.com/voxpupuli/puppet-wget/compare/v1.6.0...v1.7.0)

**Merged pull requests:**

- Add md5sum check [\#42](https://github.com/voxpupuli/puppet-wget/pull/42) ([squiddle](https://github.com/squiddle))

## [v1.6.0](https://github.com/voxpupuli/puppet-wget/tree/v1.6.0) (2015-03-27)

[Full Changelog](https://github.com/voxpupuli/puppet-wget/compare/v1.5.7...v1.6.0)

**Closed issues:**

- no way to disable file backup [\#39](https://github.com/voxpupuli/puppet-wget/issues/39)

**Merged pull requests:**

- added support for solaris 10 in fetch.pp [\#41](https://github.com/voxpupuli/puppet-wget/pull/41) ([tosmi](https://github.com/tosmi))
- Add backup option [\#40](https://github.com/voxpupuli/puppet-wget/pull/40) ([duskglow](https://github.com/duskglow))
- fetch is not a class [\#36](https://github.com/voxpupuli/puppet-wget/pull/36) ([igalic](https://github.com/igalic))

## [v1.5.7](https://github.com/voxpupuli/puppet-wget/tree/v1.5.7) (2014-12-22)

[Full Changelog](https://github.com/voxpupuli/puppet-wget/compare/v1.5.6...v1.5.7)

**Closed issues:**

- Support Mac [\#32](https://github.com/voxpupuli/puppet-wget/issues/32)

## [v1.5.6](https://github.com/voxpupuli/puppet-wget/tree/v1.5.6) (2014-09-15)

[Full Changelog](https://github.com/voxpupuli/puppet-wget/compare/v1.5.5...v1.5.6)

## [v1.5.5](https://github.com/voxpupuli/puppet-wget/tree/v1.5.5) (2014-09-11)

[Full Changelog](https://github.com/voxpupuli/puppet-wget/compare/v1.5.4...v1.5.5)

## [v1.5.4](https://github.com/voxpupuli/puppet-wget/tree/v1.5.4) (2014-09-11)

[Full Changelog](https://github.com/voxpupuli/puppet-wget/compare/v1.5.3...v1.5.4)

## [v1.5.3](https://github.com/voxpupuli/puppet-wget/tree/v1.5.3) (2014-09-08)

[Full Changelog](https://github.com/voxpupuli/puppet-wget/compare/v1.5.2...v1.5.3)

**Merged pull requests:**

- Fixed PE version to allow 3.2 and 3.3 [\#33](https://github.com/voxpupuli/puppet-wget/pull/33) ([adamcrews](https://github.com/adamcrews))

## [v1.5.2](https://github.com/voxpupuli/puppet-wget/tree/v1.5.2) (2014-08-27)

[Full Changelog](https://github.com/voxpupuli/puppet-wget/compare/v1.5.1...v1.5.2)

## [v1.5.1](https://github.com/voxpupuli/puppet-wget/tree/v1.5.1) (2014-08-18)

[Full Changelog](https://github.com/voxpupuli/puppet-wget/compare/v1.4.5...v1.5.1)

**Merged pull requests:**

- Fixed 'unless' test when we are using caching [\#30](https://github.com/voxpupuli/puppet-wget/pull/30) ([stevesaliman](https://github.com/stevesaliman))

## [v1.4.5](https://github.com/voxpupuli/puppet-wget/tree/v1.4.5) (2014-07-23)

[Full Changelog](https://github.com/voxpupuli/puppet-wget/compare/v1.4.4...v1.4.5)

**Merged pull requests:**

- Resolves issue \#19 added --no-cookies boolean and --header array parameters  [\#29](https://github.com/voxpupuli/puppet-wget/pull/29) ([Limess](https://github.com/Limess))

## [v1.4.4](https://github.com/voxpupuli/puppet-wget/tree/v1.4.4) (2014-06-27)

[Full Changelog](https://github.com/voxpupuli/puppet-wget/compare/v1.4.3...v1.4.4)

## [v1.4.3](https://github.com/voxpupuli/puppet-wget/tree/v1.4.3) (2014-06-13)

[Full Changelog](https://github.com/voxpupuli/puppet-wget/compare/v1.4.2...v1.4.3)

**Merged pull requests:**

- Update fetch.pp [\#28](https://github.com/voxpupuli/puppet-wget/pull/28) ([mens](https://github.com/mens))

## [v1.4.2](https://github.com/voxpupuli/puppet-wget/tree/v1.4.2) (2014-06-10)

[Full Changelog](https://github.com/voxpupuli/puppet-wget/compare/v1.4.1...v1.4.2)

**Closed issues:**

- Wget package fails under Windows [\#24](https://github.com/voxpupuli/puppet-wget/issues/24)

**Merged pull requests:**

- Add freebsd support [\#27](https://github.com/voxpupuli/puppet-wget/pull/27) ([illogicalimbecile](https://github.com/illogicalimbecile))

## [v1.4.1](https://github.com/voxpupuli/puppet-wget/tree/v1.4.1) (2014-04-01)

[Full Changelog](https://github.com/voxpupuli/puppet-wget/compare/v1.4.0...v1.4.1)

**Merged pull requests:**

- Exec wget with default user when using cache\_dir [\#22](https://github.com/voxpupuli/puppet-wget/pull/22) ([gnustavo](https://github.com/gnustavo))

## [v1.4.0](https://github.com/voxpupuli/puppet-wget/tree/v1.4.0) (2014-03-31)

[Full Changelog](https://github.com/voxpupuli/puppet-wget/compare/v1.3.2...v1.4.0)

**Closed issues:**

- License File [\#20](https://github.com/voxpupuli/puppet-wget/issues/20)

## [v1.3.2](https://github.com/voxpupuli/puppet-wget/tree/v1.3.2) (2014-02-24)

[Full Changelog](https://github.com/voxpupuli/puppet-wget/compare/v1.3.1...v1.3.2)

**Closed issues:**

- Last release fails on Debian Wheezy [\#18](https://github.com/voxpupuli/puppet-wget/issues/18)

## [v1.3.1](https://github.com/voxpupuli/puppet-wget/tree/v1.3.1) (2013-12-11)

[Full Changelog](https://github.com/voxpupuli/puppet-wget/compare/v1.3.0...v1.3.1)

## [v1.3.0](https://github.com/voxpupuli/puppet-wget/tree/v1.3.0) (2013-12-10)

[Full Changelog](https://github.com/voxpupuli/puppet-wget/compare/v1.2.3...v1.3.0)

**Closed issues:**

- Unable to run as non-root user [\#14](https://github.com/voxpupuli/puppet-wget/issues/14)

## [v1.2.3](https://github.com/voxpupuli/puppet-wget/tree/v1.2.3) (2013-11-21)

[Full Changelog](https://github.com/voxpupuli/puppet-wget/compare/v1.2.2...v1.2.3)

## [v1.2.2](https://github.com/voxpupuli/puppet-wget/tree/v1.2.2) (2013-09-14)

[Full Changelog](https://github.com/voxpupuli/puppet-wget/compare/v1.2.1...v1.2.2)

**Merged pull requests:**

- Make source default to title [\#13](https://github.com/voxpupuli/puppet-wget/pull/13) ([igalic](https://github.com/igalic))

## [v1.2.1](https://github.com/voxpupuli/puppet-wget/tree/v1.2.1) (2013-08-29)

[Full Changelog](https://github.com/voxpupuli/puppet-wget/compare/v1.2.0...v1.2.1)

**Merged pull requests:**

- quote both source and destination [\#12](https://github.com/voxpupuli/puppet-wget/pull/12) ([peterhoeg](https://github.com/peterhoeg))
- Proper wget quote handling [\#10](https://github.com/voxpupuli/puppet-wget/pull/10) ([pjagielski](https://github.com/pjagielski))

## [v1.2.0](https://github.com/voxpupuli/puppet-wget/tree/v1.2.0) (2013-06-06)

[Full Changelog](https://github.com/voxpupuli/puppet-wget/compare/v1.1.0...v1.2.0)

**Merged pull requests:**

- reworked for style [\#9](https://github.com/voxpupuli/puppet-wget/pull/9) ([ghoneycutt](https://github.com/ghoneycutt))
- Add option to download with user. [\#8](https://github.com/voxpupuli/puppet-wget/pull/8) ([juanibiapina](https://github.com/juanibiapina))
- added support for nocheckcertificate option [\#6](https://github.com/voxpupuli/puppet-wget/pull/6) ([srse](https://github.com/srse))
- Option for forcing re-download of a file which already exists [\#5](https://github.com/voxpupuli/puppet-wget/pull/5) ([acr31](https://github.com/acr31))

## [v1.1.0](https://github.com/voxpupuli/puppet-wget/tree/v1.1.0) (2013-01-25)

[Full Changelog](https://github.com/voxpupuli/puppet-wget/compare/v1.0.0...v1.1.0)

**Merged pull requests:**

- New version param for package ensure [\#3](https://github.com/voxpupuli/puppet-wget/pull/3) ([dcarley](https://github.com/dcarley))

## [v1.0.0](https://github.com/voxpupuli/puppet-wget/tree/v1.0.0) (2012-11-30)

[Full Changelog](https://github.com/voxpupuli/puppet-wget/compare/0.0.1...v1.0.0)

## [0.0.1](https://github.com/voxpupuli/puppet-wget/tree/0.0.1) (2012-07-13)

[Full Changelog](https://github.com/voxpupuli/puppet-wget/compare/a0ef13c4af9c6e809c52561a572ba4bd8ffdc172...0.0.1)

**Merged pull requests:**

- MAESTRO-1884 added Mac OS support. [\#1](https://github.com/voxpupuli/puppet-wget/pull/1) ([etiennep](https://github.com/etiennep))



\* *This Changelog was automatically generated by [github_changelog_generator](https://github.com/skywinder/Github-Changelog-Generator)*
