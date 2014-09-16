# $OpenBSD: Makefile,v 1.6 2014/09/16 19:22:38 landry Exp $

COMMENT=	graphical circuit design and simulation tool
BROKEN-hppa =	OOM on hicumL2V2p23.core.o

DISTNAME=	qucs-0.0.16
REVISION=	0
CATEGORIES=	cad

HOMEPAGE=	http://qucs.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=qucs/}

WANTLIB += ICE SM X11 c m pthread stdc++

MODULES=	x11/qt3

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} 
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -pthread"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

.include <bsd.port.mk>
