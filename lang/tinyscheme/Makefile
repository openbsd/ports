# $OpenBSD: Makefile,v 1.5 2015/05/20 11:40:22 jca Exp $

SHARED_ONLY=	Yes

COMMENT=	lightweight Scheme implementation with subset of R5RS

DISTNAME=	tinyscheme-1.41
CATEGORIES=	lang

HOMEPAGE=	http://tinyscheme.sourceforge.net/home.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes

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
