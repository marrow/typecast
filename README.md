# $project

> This is a project template, meant for duplication and use as a starting point. Please search through these files for any occurrences of, and populate: `$project`, `$package`, `$version`, `$repo`, ...

[![][latestversion]][latestversion_] [![][ghtag]][ghtag_] [![][masterstatus]][masterstatus_] [![][mastercover]][mastercover_] [![][masterreq]][masterreq_] [![][ghwatch]][ghsubscription] [![][ghstar]][ghsubscription]

> © 2019 Alice Bevan-McGregor and contributors.

> https://github.com/marrow/$repo

Please describe the package here in few sentences; the goal is about a paragraph. Something easy to digest, but not too brief to give a good idea of what the package is for. For example, this is not a real package, it's a package template for "unpacking" on GitHub using their Repository Templates feature. You won't find this on the Python Package Index (Pypi).

## Contents

1. [Overview](#overview)

2. [Installation](#installation)

	1. [Development Version](#development-version)

3. [Getting Started](#getting-started)

4. [Version History](#version-history)

5. [License](#license)


## Overview

Provide a more detailed or in-depth description here, being sure to cover both rationale and goals.


## Installation

Installing `$project` is easy, just execute the following in a terminal:

	pip install $project

**Note:** We *strongly* recommend always using a container, virtualization, or sandboxing environment of some kind when developing using Python. We highly recommend use of the Python standard [`venv` (_"virtual environment"_) mechanism][venv].

If you add `$project` to the `install_requires` argument of the call to `setup()` in your application's `setup.py` or `setup.cfg` files, $project will be automatically installed and made available when your own application or library is installed. Use `$project ~= $version` to get all bugfixes for the current release while ensuring that large breaking changes are not installed by limiting to the same major/minor, >= the given patch level.

This package has the following dependencies:

* A Python interpreter compatible with CPython 3.7 and or newer, i.e. official CPython or Pypy.


### Development Version

> [![][developstatus]][developstatus_] [![][developcover]][developcover_] [![][ghsince]][ghsince_] [![][ghissues]][ghissues_] [![][ghfork]][ghfork_]

Development takes place on [GitHub][github] in the [$repo][repo] project. Issue tracking, documentation, and downloads are provided there.

Installing the current development version requires [Git][git]), a distributed source code management system. If you have Git you can run the following to download and *link* the development version into your Python runtime:

	git clone https://github.com/marrow/$repo.git
	pip install -e '$repo[development]'

You can then upgrade to the latest version at any time, from within that source folder:

	git pull
	pip install -e '.[development]'

If you would like to make changes and contribute them back to the project, fork the GitHub project, make your changes, and submit a pull request. This process is beyond the scope of this documentation; for more information see [GitHub's documentation][ghhelp].


## Getting Started

Describe the basic steps required to utilize this package. Provide additional sections or subsections as needed. If this documentation exceeds an additional section or two, consider writing a GitBook instead.


## Version History

This project has yet to make any releases. When it does, each release should be documented here with a sub-section for the version, and a bulleted list of itemized changes tagged with the kind of change, e.g. *fixed*, *added*, *removed*, or *deprecated*.


## License

$project has been released under the MIT Open Source license.

### The MIT License

Copyright © 2019 Alice Bevan-McGregor and contributors.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


[venv]: https://docs.python.org/3/tutorial/venv.html

[git]: http://git-scm.com/
[repo]: https://github.com/marrow/$repo/
[github]: https://github.com/
[ghhelp]: https://help.github.com/


[ghwatch]: https://img.shields.io/github/watchers/marrow/$repo.svg?style=social&label=Watch "Subscribe to project activity on GitHub."
[ghstar]: https://img.shields.io/github/stars/marrow/$repo.svg?style=social&label=Star "Star this project on GitHub."
[ghsubscription]: https://github.com/marrow/cinje/subscription
[ghfork]: https://img.shields.io/github/forks/marrow/$repo.svg?style=social&label=Fork "Fork this project on Github."
[ghfork_]: https://github.com/marrow/cinje/fork

[masterstatus]: http://img.shields.io/travis/marrow/$repo/master.svg?style=flat "Production build status."
[masterstatus_]: https://travis-ci.org/marrow/cinje/branches
[mastercover]: http://img.shields.io/codecov/c/github/marrow/$repo/master.svg?style=flat "Production test coverage."
[mastercover_]: https://codecov.io/github/marrow/cinje?branch=master
[masterreq]: https://img.shields.io/requires/github/marrow/$repo.svg "Status of production dependencies."
[masterreq_]: https://requires.io/github/marrow/cinje/requirements/?branch=master

[developstatus]: http://img.shields.io/travis/marrow/$repo/develop.svg?style=flat "Development build status."
[developstatus_]: https://travis-ci.org/marrow/cinje/branches
[developcover]: http://img.shields.io/codecov/c/github/marrow/$repo/develop.svg?style=flat "Development test coverage."
[developcover_]: https://codecov.io/github/marrow/cinje?branch=develop
[developreq]: https://img.shields.io/requires/github/marrow/$repo.svg "Status of development dependencies."
[developreq_]: https://requires.io/github/marrow/cinje/requirements/?branch=develop

[ghissues]: http://img.shields.io/github/issues-raw/marrow/$repo.svg?style=flat "Github Issues"
[ghissues_]: https://github.com/marrow/cinje/issues
[ghsince]: https://img.shields.io/github/commits-since/marrow/$repo/$version.svg "Changes since last release."
[ghsince_]: https://github.com/marrow/cinje/commits/develop
[ghtag]: https://img.shields.io/github/tag/marrow/$repo.svg "Latest Github tagged release."
[ghtag_]: https://github.com/marrow/cinje/tree/$version
[latestversion]: http://img.shields.io/pypi/v/$project.svg?style=flat "Latest released version on Pypi."
[latestversion_]: https://pypi.python.org/pypi/$project

[cake]: http://img.shields.io/badge/cake-lie-1b87fb.svg?style=flat