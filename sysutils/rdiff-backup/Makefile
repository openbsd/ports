COMMENT =	reverse differential backup tool, over a network or locally

MODPY_DISTV =	2.2.5
DISTNAME =	rdiff-backup-${MODPY_DISTV}
REVISION =	2

CATEGORIES =	sysutils

HOMEPAGE =	https://rdiff-backup.net/

MAINTAINER =	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB +=		rsync pthread ${MODPY_WANTLIB}

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm
CFLAGS +=		-I${LOCALBASE}/include

LIB_DEPENDS =		net/librsync

RUN_DEPENDS =		devel/py-importlib-metadata \
			textproc/py-yaml

# tests are present but are intended to run via Tox in a Docker container
NO_TEST =		Yes

.include <bsd.port.mk>
