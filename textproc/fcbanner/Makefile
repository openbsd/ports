# $OpenBSD: Makefile,v 1.4 2019/07/12 20:49:58 sthen Exp $

COMMENT =	fontconfig-based alternative to banner(1)

PKGNAME =	fcbanner-0.0.20040302
DISTFILES =	fcbanner.c

CATEGORIES =	textproc

HOMEPAGE =	http://www.normalesup.org/~george/comp/fcbanner/
MASTER_SITES =	${HOMEPAGE}

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =	c expat fontconfig freetype z

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

NO_TEST =	Yes

.include <bsd.port.mk>
