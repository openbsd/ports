# $OpenBSD: Makefile,v 1.7 2019/07/12 20:47:23 sthen Exp $

COMMENT=	lightweight Scheme implementation with subset of R5RS

DISTNAME=	tinyscheme-1.41
CATEGORIES=	lang

HOMEPAGE=	http://tinyscheme.sourceforge.net/home.html

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tinyscheme/}

WANTLIB += c m

MAKE_FILE=	${WRKSRC}/makefile
MAKE_FLAGS=	LD="${CC}"

CFLAGS+=	-fPIC -DInitFile="\"${PREFIX}/share/tinyscheme/init.scm\""

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/scheme ${PREFIX}/bin/tinyscheme
	${INSTALL_DATA} ${WRKSRC}/scheme.h ${PREFIX}/include/tinyscheme.h
	${INSTALL_DATA_DIR} ${PREFIX}/share/tinyscheme/
	${INSTALL_DATA} ${WRKSRC}/init.scm ${PREFIX}/share/tinyscheme

.include <bsd.port.mk>
