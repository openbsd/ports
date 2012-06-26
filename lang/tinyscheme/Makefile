# $OpenBSD: Makefile,v 1.1.1.1 2012/06/26 19:53:38 jasper Exp $

COMMENT=	lightweight Scheme implementation with subset of R5RS

DISTNAME=	tinyscheme-1.40
CATEGORIES=	lang

HOMEPAGE=	http://tinyscheme.sourceforge.net/home.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tinyscheme/}

WANTLIB += c m

MAKE_FILE=	${WRKSRC}/makefile

CFLAGS+=	-fPIC -DInitFile="\"${PREFIX}/share/tinyscheme/init.scm\""

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/scheme ${PREFIX}/bin/tinyscheme
	${INSTALL_DATA} ${WRKSRC}/scheme.h ${PREFIX}/include/tinyscheme.h
	${INSTALL_DATA_DIR} ${PREFIX}/share/tinyscheme/
	${INSTALL_DATA} ${WRKSRC}/init.scm ${PREFIX}/share/tinyscheme

.include <bsd.port.mk>