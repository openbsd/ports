# $OpenBSD: Makefile,v 1.39 2019/10/20 08:03:02 ajacoutot Exp $

COMMENT=	GNUstep workspace manager

DISTNAME =	gworkspace-0.9.4
REVISION =	6

CATEGORIES=	x11

SO_VERSION=	0.0
.for _lib in DBKit FSNode Inspector Operation MDKit
SHARED_LIBS+=	${_lib} ${SO_VERSION}
.endfor

HOMEPAGE=	http://www.gnustep.org/experience/GWorkspace.html

MASTER_SITES=	${MASTER_SITE_GNUSTEP:=usr-apps/}

MODULES=	x11/gnustep
WANTLIB +=	sqlite3 PDFKit PreferencePanes
WANTLIB += ${COMPILER_LIBCXX}
LIB_DEPENDS +=	databases/sqlite3 \
		x11/gnustep/pdfkit \
		x11/gnustep/systempreferences

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

APP_WRAPPERS +=	ImageMagick LibreOffice LyX abiword bluefish coccinella
APP_WRAPPERS +=	firefox gedit gimp gnumeric nedit opennx qlandkartegt seamonkey
APP_WRAPPERS +=	spdrs60 xchat xfig xpdf xtrkcad xv

post-install:
.for _app in ${APP_WRAPPERS}
	cp -r ${WRKSRC}/Apps_wrappers/${_app}.app ${PREFIX}/libexec/GNUstep
.endfor

.include <bsd.port.mk>
