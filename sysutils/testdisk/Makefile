# $OpenBSD: Makefile,v 1.12 2013/03/11 11:41:33 espie Exp $

COMMENT =	data recovery software

VERSION =	6.13
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

LIB_DEPENDS =		sysutils/e2fsprogs \
			graphics/jpeg

WANTLIB =		c crypto e2fs-uuid ext2fs ext2fs_com_err \
			jpeg ncursesw z

post-install:
			${INSTALL_DATA} ${WRKSRC}/doc/online.html ${PREFIX}/share/doc/${DISTNAME}/html

.include <bsd.port.mk>
