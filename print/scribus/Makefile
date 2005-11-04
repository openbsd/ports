# $OpenBSD: Makefile,v 1.3 2005/11/04 14:18:43 kurt Exp $

COMMENT=		"DTP program"
CATEGORIES=		print
DISTNAME=		scribus-1.2.2.1
PKGNAME=		${DISTNAME}p0
EXTRACT_SUFX=		.tar.bz2
HOMEPAGE=		http://www.scribus.org.uk/
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=scribus/}

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}
SHARED_ONLY=Yes
MODULES=	x11/qt3
MODQT_MT=Yes
CONFIGURE_STYLE=	gnu
#AUTOCONF_VERSION=	2.59
CONFIGURE_ARGS+=	${MODQT_CONFIGURE_ARGS}
CONFIGURE_ARGS+=	--with-extra-libs=${LOCALBASE}/lib --with-extra-includes=${LOCALBASE}/include/libpng:${LOCALBASE}/include
CONFIGURE_ENV+=		UIC_PATH=${MODQT_UIC}
CONFIGURE_ENV+=		CPPFLAGS='-I${MODQT_INCDIR} -I${LOCALBASE}/include/libpng -I${LOCALBASE}/include' LDFLAGS='-L${MODQT_LIBDIR} -L${LOCALBASE}/lib'

FLAVORS=		debug

FLAVOR?=

.if ${FLAVOR:L:Mdebug}
CONFIGURE_ARGS+=	--enable-debug=Yes
CFLAGS+=-g
CXXFLAGS+=-g
.endif


USE_LIBTOOL=		Yes
LIB_DEPENDS=		lcms::graphics/lcms \
			xml2::textproc/libxml \
			tiff::graphics/tiff \
			python2.3.0.0:python-2.3.*:lang/python/2.3 \
			png::graphics/png \
			jpeg::graphics/jpeg \
			cups::print/cups \
			art_lgpl_2.0.0::graphics/libart

WANTLIB=	ICE SM freetype Xext pthread stdc++ crypto c X11 util m z ssl
USE_GMAKE=	Yes

WANTLIB+=	iconv



# GPL
PERMIT_DISTFILES_CDROM?=	Yes
PERMIT_DISTFILES_FTP?=		Yes
PERMIT_PACKAGE_CDROM?=		Yes
PERMIT_PACKAGE_FTP?=		Yes

.include <bsd.port.mk>
