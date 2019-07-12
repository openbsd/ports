# $OpenBSD: Makefile,v 1.23 2019/07/12 20:47:27 sthen Exp $

COMMENT=	fetch, filter and deliver mail

V=		2.0
DISTNAME=	fdm-$V
CATEGORIES=	mail

MAINTAINER=	Nicholas Marriott <nicm@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB= c crypto pcre ssl z tdb>=3.0

MASTER_SITES=	https://github.com/nicm/fdm/releases/download/$V/

LIB_DEPENDS +=	databases/tdb>=1.2.7 \
		devel/pcre

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-pcre

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/fdm
	${INSTALL_SCRIPT} ${WRKSRC}/fdm-sanitize ${PREFIX}/share/fdm
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fdm
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/fdm
	${INSTALL_DATA} ${WRKSRC}/MANUAL ${PREFIX}/share/doc/fdm
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/fdm
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/fdm

.include <bsd.port.mk>
