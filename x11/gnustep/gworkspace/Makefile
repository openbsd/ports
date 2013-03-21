# $OpenBSD: Makefile,v 1.21 2013/03/21 08:48:56 ajacoutot Exp $

COMMENT=	GNUstep workspace manager

DISTNAME =	gworkspace-0.9.1
REVISION =	0

CATEGORIES=	x11

SO_VERSION=	0.0
.for _lib in DBKit FSNode Inspector Operation MDKit
SHARED_LIBS+=	${_lib} ${SO_VERSION}
.endfor

HOMEPAGE=	http://www.gnustep.org/experience/GWorkspace.html

MASTER_SITES=	${MASTER_SITE_GNUSTEP:=usr-apps/}

MODULES=	x11/gnustep
WANTLIB +=	c m pthread sqlite3 PreferencePanes
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
	cp ${FILESDIR}/MDFinder_GNUmakefile ${WRKSRC}/GWMetadata/MDFinder/GNUmakefile
	cp ${FILESDIR}/Preferences_GNUmakefile ${WRKSRC}/GWMetadata/Preferences/GNUmakefile
	cd ${WRKSRC}/GWMetadata/gmds/mdextractor/Extractors/JpegExtractor && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} autoconf

.include <bsd.port.mk>
