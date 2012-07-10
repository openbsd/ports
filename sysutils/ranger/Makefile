# $OpenBSD: Makefile,v 1.2 2012/07/10 09:03:54 sthen Exp $

COMMENT =	minimalistic console file manager

MODPY_EGG_VERSION = 1.5.4
REVISION =	0
DISTNAME =	ranger-${MODPY_EGG_VERSION}

CATEGORIES =	sysutils misc

HOMEPAGE =	http://www.nongnu.org/ranger/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	 Yes
PERMIT_PACKAGE_FTP =	 Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	 Yes

MASTER_SITES =	${HOMEPAGE}

MODULES =	lang/python
# libarchive (bsdtar) used as an alternative to atool; see scope.sh patch
RUN_DEPENDS =	archivers/libarchive \
		textproc/py-chardet

REGRESS_DEPENDS=devel/gmake

do-regress:
	cd ${WRKSRC}; PYTHON=${MODPY_BIN} gmake test

.include <bsd.port.mk>
