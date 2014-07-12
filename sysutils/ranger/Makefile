# $OpenBSD: Makefile,v 1.4 2014/07/12 01:25:55 sthen Exp $

COMMENT =	minimalistic console file manager

MODPY_EGG_VERSION = 1.6.1
DISTNAME =	ranger-${MODPY_EGG_VERSION}

CATEGORIES =	sysutils misc

HOMEPAGE =	http://www.nongnu.org/ranger/

# GPLv3+
PERMIT_PACKAGE_CDROM =	 Yes

MASTER_SITES =	${HOMEPAGE}

MODULES =	lang/python
# libarchive (bsdtar) used as an alternative to atool; see scope.sh patch
RUN_DEPENDS =	archivers/libarchive \
		textproc/py-chardet

TEST_DEPENDS =	devel/gmake \
		sysutils/ggrep

do-test:
	cd ${WRKSRC}; PYTHON=${MODPY_BIN} gmake test

.include <bsd.port.mk>
