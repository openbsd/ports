# $OpenBSD: Makefile,v 1.14 2013/08/12 15:05:27 landry Exp $

COMMENT =	data recovery software

VERSION =	6.14
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

LIB_DEPENDS =		sysutils/e2fsprogs>=1.42.7 \
			graphics/jpeg

WANTLIB =		c com_err uuid ext2fs jpeg ncursesw z

post-install:
			${INSTALL_DATA} ${WRKSRC}/documentation.html ${PREFIX}/share/doc/${DISTNAME}/

.include <bsd.port.mk>
