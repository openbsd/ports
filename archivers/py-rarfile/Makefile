COMMENT =		RAR archive reader for Python

MODPY_DISTV =		4.2

DISTNAME =		rarfile-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		archivers

HOMEPAGE =		https://github.com/markokr/rarfile

MAINTAINER =		Kurt Mosiejczuk <kmos@openbsd.org>

# ISC
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		archivers/libarchive \
			archivers/unrar

.include <bsd.port.mk>
