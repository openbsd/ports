# $OpenBSD: Makefile,v 1.8 2010/10/26 12:39:10 sebastia Exp $

COMMENT=	GNUstep workspace manager

DISTNAME=	gworkspace-0.8.8
REVISION=	2

CATEGORIES=	x11

SO_VERSION=	0.0
.for _lib in DBKit FSNode Inspector Operation
SHARED_LIBS+=	${_lib} ${SO_VERSION}
.endfor

HOMEPAGE=	http://www.gnustep.org/experience/GWorkspace.html

MASTER_SITES=	${MASTER_SITE_GNUSTEP:=usr-apps/}

MODULES=	x11/gnustep
WANTLIB=	c m pthread

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
