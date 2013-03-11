# $OpenBSD: Makefile,v 1.3 2013/03/11 11:41:32 espie Exp $

COMMENT =	minimalistic console file manager

MODPY_EGG_VERSION = 1.5.4
REVISION =	0
DISTNAME =	ranger-${MODPY_EGG_VERSION}

CATEGORIES =	sysutils misc

HOMEPAGE =	http://www.nongnu.org/ranger/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	 Yes

MASTER_SITES =	${HOMEPAGE}

MODULES =	lang/python
# libarchive (bsdtar) used as an alternative to atool; see scope.sh patch
RUN_DEPENDS =	archivers/libarchive \
		textproc/py-chardet

TEST_DEPENDS=devel/gmake

do-test:
	cd ${WRKSRC}; PYTHON=${MODPY_BIN} gmake test

.include <bsd.port.mk>
