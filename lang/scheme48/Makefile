# $OpenBSD: Makefile,v 1.17 2019/07/12 20:47:22 sthen Exp $

COMMENT=	Scheme Underground's implementation of R5RS
# '

V=		1.9.2
DISTNAME=	scheme48-$V
CATEGORIES=	lang
REVISION=	0

HOMEPAGE=	http://www.s48.org/

# 3-clause BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${HOMEPAGE}/$V/
EXTRACT_SUFX=		.tgz

WANTLIB=		c m pthread

USE_GMAKE=		Yes
ALL_TARGET=		enough

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		LD="${CC}" LDFLAGS="-Wl,--export-dynamic"

post-install: 
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/scheme48
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${WRKSRC}/doc/*.ps \
		${WRKSRC}/doc/*.pdf ${PREFIX}/share/doc/scheme48
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/scheme48
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/scheme48/html
	${INSTALL_DATA} ${WRKSRC}/doc/html/* \
		${PREFIX}/share/doc/scheme48/html

.include <bsd.port.mk>
