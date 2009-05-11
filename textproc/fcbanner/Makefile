# $OpenBSD: Makefile,v 1.1.1.1 2009/05/11 15:50:35 sthen Exp $

COMMENT =	fontconfig-based alternative to banner(1)

PKGNAME =	fcbanner-0.0.20040302
DISTFILES =	fcbanner.c

CATEGORIES =	textproc

HOMEPAGE =	http://www.normalesup.org/~george/comp/fcbanner/
MASTER_SITES =	${HOMEPAGE}

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c expat fontconfig freetype z
USE_X11 =	Yes

do-extract:		
	cp ${DISTDIR}/fcbanner.c ${WRKSRC}/

do-build:
	cd ${WRKSRC}; \
	    ${CC} -Wall -W -std=c99 -D_XOPEN_SOURCE=600 ${CFLAGS} -o fcbanner \
	    `pkg-config --cflags freetype2 fontconfig` fcbanner.c \
	    `pkg-config --libs freetype2 fontconfig`; \
	    sed '/^*/q' < fcbanner.c > fcbanner.txt
  
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/fcbanner ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fcbanner
	${INSTALL_DATA} ${WRKSRC}/fcbanner.txt ${PREFIX}/share/doc/fcbanner

NO_REGRESS =	Yes

.include <bsd.port.mk>
