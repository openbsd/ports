COMMENT =	incremental backup

MODPY_EGG_VERSION =	2.0.5
DISTNAME =	rdiff-backup-${MODPY_EGG_VERSION}
REVISION =	0

CATEGORIES =	sysutils

HOMEPAGE =	https://rdiff-backup.net/

MAINTAINER =	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB +=		rsync pthread ${MODPY_WANTLIB}

LIB_DEPENDS +=		net/librsync

MODULES	=		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm
CFLAGS +=		-I${LOCALBASE}/include

RUN_DEPENDS =		devel/py-setuptools${MODPY_FLAVOR}

# tests are present but are intended to run via Tox in a Docker container
NO_TEST =		Yes

.include <bsd.port.mk>
