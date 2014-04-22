# $OpenBSD: Makefile,v 1.15 2014/04/22 10:11:02 sthen Exp $

COMMENT =	data recovery software

VERSION =	6.14
DISTNAME =	testdisk-${VERSION}
REVISION =	0
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

LIB_DEPENDS =		sysutils/e2fsprogs>=1.42.7 \
			sysutils/ntfs-3g \
			graphics/jpeg

WANTLIB =		c com_err uuid ext2fs jpeg ncursesw ntfs-3g z

post-install:
			${INSTALL_DATA} ${WRKSRC}/documentation.html ${PREFIX}/share/doc/${DISTNAME}/

.include <bsd.port.mk>
