# $OpenBSD: Makefile,v 1.14 2019/07/12 20:43:45 sthen Exp $

PORTROACH=	limit:[0-9]\.[0-9]\.[0-9][0-9]$

COMMENT=	graphical circuit design and simulation tool
BROKEN-hppa =	OOM on hicumL2V2p23.core.o

DISTNAME=	qucs-0.0.16
REVISION=	3
CATEGORIES=	cad

HOMEPAGE=	http://qucs.sourceforge.net/

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=qucs/}

WANTLIB += ICE SM X11 c m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MODULES=	x11/qt3

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -pthread"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

post-configure:
	perl -pi.bak \
	    -e 's,.*(\#undef __(BEGIN|END)_DECLS).*,$$1,;' \
	    ${WRKBUILD}/config.h ${WRKBUILD}/qucs-core/config.h

.include <bsd.port.mk>
