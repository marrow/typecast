# Marrow Typecast

[![][latestversion]][latestversion_] [![][ghtag]][ghtag_] [![][masterstatus]][masterstatus_] [![][mastercover]][mastercover_] [![][masterreq]][masterreq_] [![][ghwatch]][ghsubscription] [![][ghstar]][ghsubscription]

> © 2020 Alice Bevan-McGregor and contributors.

> https://github.com/marrow/typecast

Utilize Python 3 function annotations for rich, structured typecasting, not just type validation and hinting, through direct specification and inference.


## Contents

1. [Overview](#overview)

2. [Installation](#installation)

	1. [Development Version](#development-version)

3. [Getting Started](#getting-started)

4. [Version History](#version-history)

5. [License](#license)


## Overview

A fairly substantial number of packages exist for the purpose of de-serializing data coming in from the web. Many utilize dedicated schemas, or declarative mechanisms to explicitly define a data model for the purpose of listening to that side of the conversation, sometimes also incorporating re-serialization out in various ways such as form widget libraries, JSON data, &c. Most use decorators to serve the role of "annotating" functions. Many of these were developed with legacies starting in Python 2, prior to the addition of [function annotations](https://www.python.org/dev/peps/pep-3107/) in Python 3.

Until such time as [PEP 593](https://www.python.org/dev/peps/pep-0593/) (_Flexible function and variable annotations_) hits release and wide adoption in Python 3.9, this package aims to provide such functionality explicitly, where annotations are explicit, and through inference more generally.  There will be a bias towards the context of web-based and command-line invocation.  In the abstract, this can eliminate the need for "form libraries" et. al. for resolving simpler or more common problems.


## Installation

Installing `marrow.typecast` is easy, just execute the following in a terminal:

	pip install marrow.typecast

**Note:** We *strongly* recommend always using a container, virtualization, or sandboxing environment of some kind when developing using Python. We highly recommend use of the Python standard [`venv` (_"virtual environment"_) mechanism][venv].

If you add `marrow.typecast` to the `install_requires` argument of the call to `setup()` in your application's `setup.py` or `setup.cfg` files, `marrow.typecast` will be automatically installed and made available when your own application or library is installed. Use `marrow.typecast ~= 1.0.0` to get all bug fixes for the current release while ensuring that large breaking changes are not installed by limiting to the same major/minor, >= the given patch level.

This package has the following dependencies:

* A Python interpreter compatible with CPython 3.7 and or newer, i.e. official CPython or Pypy.


### Development Version

> [![][developstatus]][developstatus_] [![][developcover]][developcover_] [![][ghsince]][ghsince_] [![][ghissues]][ghissues_] [![][ghfork]][ghfork_]

Development takes place on [GitHub][github] in the [typecast][repo] project. Issue tracking, documentation, and downloads are provided there.

Installing the current development version requires [Git][git]), a distributed source code management system. If you have Git you can run the following to download and *link* the development version into your Python runtime:

	git clone https://github.com/marrow/typecast.git
	pip install -e 'typecast[development]'

You can then upgrade to the latest version at any time, from within that source folder:

	git pull
	pip install -e '.[development]'

If you would like to make changes and contribute them back to the project, fork the GitHub project, make your changes, and submit a pull request. This process is beyond the scope of this documentation; for more information see [GitHub's documentation][ghhelp].


## Getting Started

General usage involves defining a function or method with annotations and decorating it using the `cast` decorator.

```py
from typing import Optional, Set

from marrow.typecast import cast


@cast
def sample(name:str, age:int, tags:Optional[Set[str]]=None):
	return name, age, tags
```

Attempts to typecast will raise `TypeError` and `ValueError` exceptions where appropriate to indicate a fundamental incompatibility or content incompatibility, respectively. For example, passing a literal `None` as the `age` parameter will result in a `TypeError` exception. Passing the string `"bob"` will result in a `ValueError`, as that string is not number-like, but number-like strings are usable.

When invoked, values will be recursively cast as needed:

```py
>>> sample("amcgregor", "27", tags=["27", 42, 53])
("amcgregor", 27, {"27", "42", "53"})
```


### Framework Usage

You may wish to expose functions through an external interface such as a web-based API or command line script. If the framework you are using is aware of / utilizes this library or if this library provides a plugin suitable for integrated use, this can eliminate any direct need for the decorator.  This will theoretically save a stack frame and the overhead of a nested function call if your framework will do this already.

This is generally unnecessary, however, as "aware" integrations will bypass the decoration and that overhead anyway. Permitting you to utilize your code both as a native Python API, and as a web-based API, command-line script, etc. as desired. Needs vary.


## Version History

This project has yet to make any releases. When it does, each release will be documented here with a sub-section for the version, and a bulleted list of itemized changes tagged with the kind of change, e.g. *fixed*, *added*, *removed*, or *deprecated*. Each will also include relevant links to the release on GitHub, and any involved issues / pull requests.


## License

Marrow Typecast has been released under the MIT Open Source license.

### The MIT License

Copyright © 2020 Alice Bevan-McGregor and contributors.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


[venv]: https://docs.python.org/3/tutorial/venv.html

[git]: http://git-scm.com/
[repo]: https://github.com/marrow/typecast/
[github]: https://github.com/
[ghhelp]: https://help.github.com/


[ghwatch]: https://img.shields.io/github/watchers/marrow/typecast.svg?style=social&label=Watch "Subscribe to project activity on GitHub."
[ghstar]: https://img.shields.io/github/stars/marrow/typecast.svg?style=social&label=Star "Star this project on GitHub."
[ghsubscription]: https://github.com/marrow/typecast/subscription
[ghfork]: https://img.shields.io/github/forks/marrow/typecast.svg?style=social&label=Fork "Fork this project on Github."
[ghfork_]: https://github.com/marrow/typecast/fork

[masterstatus]: http://img.shields.io/travis/marrow/typecast/master.svg?style=flat "Production build status."
[masterstatus_]: https://travis-ci.org/marrow/typecast/branches
[mastercover]: http://img.shields.io/codecov/c/github/marrow/typecast/master.svg?style=flat "Production test coverage."
[mastercover_]: https://codecov.io/github/marrow/typecast?branch=master
[masterreq]: https://img.shields.io/requires/github/marrow/typecast.svg "Status of production dependencies."
[masterreq_]: https://requires.io/github/marrow/typecast/requirements/?branch=master

[developstatus]: http://img.shields.io/travis/marrow/typecast/develop.svg?style=flat "Development build status."
[developstatus_]: https://travis-ci.org/marrow/typecast/branches
[developcover]: http://img.shields.io/codecov/c/github/marrow/typecast/develop.svg?style=flat "Development test coverage."
[developcover_]: https://codecov.io/github/marrow/typecast?branch=develop
[developreq]: https://img.shields.io/requires/github/marrow/typecast.svg "Status of development dependencies."
[developreq_]: https://requires.io/github/marrow/typecast/requirements/?branch=develop

[ghissues]: http://img.shields.io/github/issues-raw/marrow/typecast.svg?style=flat "Github Issues"
[ghissues_]: https://github.com/marrow/typecast/issues
[ghsince]: https://img.shields.io/github/commits-since/marrow/typecast/1.0.svg "Changes since last release."
[ghsince_]: https://github.com/marrow/typecast/commits/develop
[ghtag]: https://img.shields.io/github/tag/marrow/typecast.svg "Latest Github tagged release."
[ghtag_]: https://github.com/marrow/typecast/tree/1.0
[latestversion]: http://img.shields.io/pypi/v/marrow.typecast.svg?style=flat "Latest released version on Pypi."
[latestversion_]: https://pypi.python.org/pypi/marrow.typecast

[cake]: http://img.shields.io/badge/cake-lie-1b87fb.svg?style=flat
