# $OpenBSD: Makefile,v 1.2 2013/03/11 11:10:54 espie Exp $

COMMENT=	intepreter for Lindenmayer-systems

# CVS checkout on 04-30-2010
DISTNAME=	lsys-0.8
CATEGORIES=	graphics math

HOMEPAGE=	http://software.schmorp.de/pkg/lsys

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://crappydiffs.org/

WANTLIB += GL GLU X11 Xext c m pthread stdc++

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

post-extract:
	@rm ${WRKSRC}/getopt*.{c,h}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/lsys ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/lsys
	${INSTALL_DATA} ${WRKSRC}/lib/{*.l,cfg} ${PREFIX}/share/examples/lsys

.include <bsd.port.mk>
