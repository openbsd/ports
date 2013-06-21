# $OpenBSD: Makefile,v 1.13 2013/06/21 22:38:34 sthen Exp $

COMMENT =	data recovery software

VERSION =	6.13
REVISION =	0
DISTNAME =	testdisk-${VERSION}
CATEGORIES =	sysutils

HOMEPAGE =	http://www.cgsecurity.org/
MASTER_SITES =	${HOMEPAGE}
EXTRACT_SUFX =	.tar.bz2

MAINTAINER =	Landry Breuil <gaston@gcu.info>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		converters/libiconv

SUBST_VARS +=		VERSION

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS =		sysutils/e2fsprogs>=1.42.7 \
			graphics/jpeg

WANTLIB =		c crypto uuid ext2fs jpeg ncursesw z

post-install:
			${INSTALL_DATA} ${WRKSRC}/doc/online.html ${PREFIX}/share/doc/${DISTNAME}/html

.include <bsd.port.mk>
