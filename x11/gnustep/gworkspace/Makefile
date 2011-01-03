# $OpenBSD: Makefile,v 1.10 2011/01/03 14:23:42 sebastia Exp $

COMMENT=	GNUstep workspace manager

DISTNAME=	gworkspace-0.8.8
REVISION=	4

CATEGORIES=	x11

SO_VERSION=	0.0
.for _lib in DBKit FSNode Inspector Operation
SHARED_LIBS+=	${_lib} ${SO_VERSION}
.endfor

HOMEPAGE=	http://www.gnustep.org/experience/GWorkspace.html

MASTER_SITES=	${MASTER_SITE_GNUSTEP:=usr-apps/}

MODULES=	x11/gnustep
WANTLIB=	c m pthread freetype PDFKit
LIB_DEPENDS +=	x11/gnustep/pdfkit

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV += GNUSTEP_MAKEFILES=`gnustep-config --variable=GNUSTEP_MAKEFILES` \
		GNUSTEP_SYSTEM_HEADERS=${LOCALBASE}/include \
		LDFLAGS=-L${X11BASE}/lib

# XXX libDBKit does not use XXX_INTERFACE_VERSION
# drawback: all solibs will get version from LIBDBKit_VERSION
MAKE_FLAGS+=	INTERFACE_VERSION=${LIBDBKit_VERSION} \
		LDFLAGS="-L${X11BASE}/lib -lfreetype"

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
