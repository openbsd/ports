# $OpenBSD: Makefile,v 1.7 2018/10/24 14:28:05 sthen Exp $

COMMENT=	intepreter for Lindenmayer-systems

# CVS checkout on 04-30-2010
DISTNAME=	lsys-0.8
CATEGORIES=	graphics math
REVISION=	2

HOMEPAGE=	http://software.schmorp.de/pkg/lsys

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://crappydiffs.org/

WANTLIB += GL GLU X11 Xext c m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

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
