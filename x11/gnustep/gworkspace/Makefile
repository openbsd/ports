# $OpenBSD: Makefile,v 1.1.1.1 2008/09/05 12:28:02 ajacoutot Exp $

COMMENT=	GNUstep workspace manager

V=		0.8.6
DISTNAME=	gworkspace-${V}
CATEGORIES=	x11

SO_VERSION=	0.0
.for _lib in DBKit FSNode Inspector Operation
SHARED_LIBS+=	${_lib} ${SO_VERSION}
.endfor

HOMEPAGE=	http://gnustep.it/enrico/gworkspace/

WANTLIB=	c gnustep-base m objc pthread

MASTER_SITES=	${HOMEPAGE}

WRKDIST=	${WRKDIR}/GWorkspace-${V}

MODULES=	x11/gnustep

RUN_DEPENDS=	::x11/gnustep/back
LIB_DEPENDS=	gnustep-gui::x11/gnustep/gui

USE_X11=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	GNUSTEP_MAKEFILES=`gnustep-config --variable=GNUSTEP_MAKEFILES`

# XXX libDBKit does not use XXX_INTERFACE_VERSION
# drawback: all solibs will get version from LIBDBKit_VERSION
MAKE_FLAGS+=	INTERFACE_VERSION=${LIBDBKit_VERSION}

MAKE_ENV+=	FSNode_VERSION=${LIBFSNode_VERSION} \
		FSNode_INTERFACE_VERSION=${LIBFSNode_VERSION} \
		Inspector_VERSION=${LIBInspector_VERSION} \
		Inspector_INTERFACE_VERSION=${LIBInspector_VERSION} \
		Operation_VERSION=${LIBOperation_VERSION} \
		Operation_INTERFACE_VERSION=${LIBOperation_VERSION}

post-install:
	${INSTALL_DATA} ${WRKSRC}/Inspector/ContentViewersProtocol.h \
		${PREFIX}/lib/GNUstep/Frameworks/Inspector.framework/Versions/${SO_VERSION}/Headers/

.include <bsd.port.mk>
