# $OpenBSD: Makefile,v 1.6 2006/01/06 08:20:20 sturm Exp $

SHARED_ONLY=	Yes

COMMENT=	"DTP program"
DISTNAME=	scribus-1.2.2.1
PKGNAME=	${DISTNAME}p2
CATEGORIES=	print

HOMEPAGE=	http://www.scribus.org.uk/

# GPL
PERMIT_PACKAGE_CDROM?=	Yes
PERMIT_PACKAGE_FTP?=	Yes
PERMIT_DISTFILES_CDROM?=Yes
PERMIT_DISTFILES_FTP?=	Yes

WANTLIB=	ICE SM X11 Xext c freetype gcrypt gnutls gpg-error \
		iconv intl m pthread stdc++ util z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scribus/}

EXTRACT_SUFX=	.tar.bz2

MODULES=	x11/qt3
MODQT_MT=	Yes

LIB_DEPENDS=	jpeg::graphics/jpeg \
		lcms::graphics/lcms \
		art_lgpl_2.0.0::graphics/libart \
		png::graphics/png \
		tiff::graphics/tiff \
		python2.3.0.0:python-2.3.*:lang/python/2.3 \
		cups::print/cups \
		xml2::textproc/libxml

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
#AUTOCONF_VERSION=	2.59
CONFIGURE_ARGS=	${MODQT_CONFIGURE_ARGS} \
		--with-extra-libs=${LOCALBASE}/lib \
		--with-extra-includes=${LOCALBASE}/include/libpng:${LOCALBASE}/include
CONFIGURE_ENV+=	UIC_PATH=${MODQT_UIC} \
		CPPFLAGS='-I${MODQT_INCDIR} -I${LOCALBASE}/include/libpng \
		-I${LOCALBASE}/include' LDFLAGS='-L${MODQT_LIBDIR} \
		-L${LOCALBASE}/lib'

FLAVORS=	debug
FLAVOR?=

.if ${FLAVOR:L:Mdebug}
CONFIGURE_ARGS+=--enable-debug=Yes
CFLAGS+=-g
CXXFLAGS+=-g
.endif

PLUGINS=about charselect csvim fontpreview htmlim importps \
	newfromtemplateplugin odtimplugin oodrawimp pdf postscript preferences \
	preview saveastemplateplugin scribusexportpixmap scribusshortwords \
	scriptplugin svgexplugin svgimplugin sxwimplugin textfilterplugin txtim 
.for _n in ${PLUGINS}
MAKE_FLAGS+=	lib${_n}_la_LDFLAGS='-module -avoid-version'
.endfor

.include <bsd.port.mk>
