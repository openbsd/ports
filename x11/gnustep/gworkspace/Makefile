# $OpenBSD: Makefile,v 1.24 2014/05/22 09:48:56 sebastia Exp $

COMMENT=	GNUstep workspace manager

DISTNAME =	gworkspace-0.9.2
REVISION =	1

CATEGORIES=	x11

SO_VERSION=	0.0
.for _lib in DBKit FSNode Inspector Operation MDKit
SHARED_LIBS+=	${_lib} ${SO_VERSION}
.endfor

HOMEPAGE=	http://www.gnustep.org/experience/GWorkspace.html

MASTER_SITES=	${MASTER_SITE_GNUSTEP:=usr-apps/}

MODULES=	x11/gnustep
WANTLIB +=	sqlite3 PreferencePanes
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS}
LIB_DEPENDS +=		x11/gnustep/systempreferences

AUTOCONF_VERSION =	2.52

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-gwmetadata
CONFIGURE_ENV += GNUSTEP_MAKEFILES=`gnustep-config --variable=GNUSTEP_MAKEFILES`

# XXX libDBKit does not use XXX_INTERFACE_VERSION
# drawback: all solibs will get version from LIBDBKit_VERSION
MAKE_FLAGS+=	INTERFACE_VERSION=${LIBDBKit_VERSION}

MAKE_ENV+=	FSNode_VERSION=${LIBFSNode_VERSION} \
		FSNode_INTERFACE_VERSION=${LIBFSNode_VERSION} \
		Inspector_VERSION=${LIBInspector_VERSION} \
		Inspector_INTERFACE_VERSION=${LIBInspector_VERSION} \
		Operation_VERSION=${LIBOperation_VERSION} \
		Operation_INTERFACE_VERSION=${LIBOperation_VERSION}

pre-configure:
	cd ${WRKSRC} && rm GWorkspace/Resources/Spanish.lproj/Localizable.strings~

.include <bsd.port.mk>
