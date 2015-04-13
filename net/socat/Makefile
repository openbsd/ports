# $OpenBSD: Makefile,v 1.19 2015/04/13 14:43:28 jasper Exp $

COMMENT=	relay for bidirectional data transfer

DISTNAME=	socat-1.7.3.0
CATEGORIES=	net

HOMEPAGE=	http://www.dest-unreach.org/socat/

MAINTAINER=	Nigel Taylor <nigel@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}/download/

WANTLIB=	curses c readline crypto util ssl

NO_TEST=	Yes

CONFIGURE_STYLE=gnu

CONFIGURE_ARGS +=	--disable-libwrap

pre-build:
	${SUBST_CMD} ${WRKSRC}/doc/socat.1
	${SUBST_CMD} ${WRKSRC}/doc/socat.html

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/socat
.for file in FAQ README SECURITY doc/xio.help doc/*.html doc/dest-unreach.css
	${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/share/doc/socat
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/socat
	${INSTALL_DATA} ${WRKSRC}/*.sh ${PREFIX}/share/examples/socat

.include <bsd.port.mk>
