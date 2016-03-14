# $OpenBSD: Makefile,v 1.16 2016/03/14 21:30:29 landry Exp $

COMMENT =	data recovery software

VERSION =	7.0
DISTNAME =	testdisk-${VERSION}
CATEGORIES =	sysutils

HOMEPAGE =	http://www.cgsecurity.org/
MASTER_SITES =	${HOMEPAGE}
EXTRACT_SUFX =	.tar.bz2

MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		converters/libiconv

SUBST_VARS +=		VERSION

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS =	--disable-qt

LIB_DEPENDS =		sysutils/e2fsprogs>=1.42.7 \
			sysutils/ntfs-3g \
			graphics/jpeg

WANTLIB =		c com_err uuid ext2fs jpeg ncursesw ntfs-3g z

post-install:
			${INSTALL_DATA} ${WRKSRC}/documentation.html ${PREFIX}/share/doc/testdisk/
			# we disable qt, no need for those
			rm -Rf ${PREFIX}/share/icons/ ${PREFIX}/man/man8/qphotorec.8 ${PREFIX}/man/zh_CN/

.include <bsd.port.mk>
