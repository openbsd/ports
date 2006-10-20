# $OpenBSD: Makefile,v 1.9 2006/10/20 22:52:47 kili Exp $

SHARED_ONLY=	Yes

COMMENT=	"DTP program"
DISTNAME=	scribus-1.3.3.4
CATEGORIES=	print

HOMEPAGE=	http://www.scribus.net/

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM?=	Yes
PERMIT_PACKAGE_FTP?=	Yes
PERMIT_DISTFILES_CDROM?=Yes
PERMIT_DISTFILES_FTP?=	Yes

WANTLIB=	ICE SM X11 Xext c freetype gcrypt gnutls gpg-error \
		m pthread stdc++ z util fontconfig

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scribus/}

EXTRACT_SUFX=	.tar.bz2

MODULES=	x11/qt3 devel/gettext lang/python
MODQT_MT=	Yes

LIB_DEPENDS=	jpeg::graphics/jpeg \
		lcms::graphics/lcms \
		art_lgpl_2::graphics/libart \
		png::graphics/png \
		tiff::graphics/tiff \
		python${MODPY_VERSION}:python-${MODPY_VERSION}.*:lang/python/${MODPY_VERSION} \
		cups::print/cups \
		xml2::textproc/libxml

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
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
	scriptplugin svgexplugin svgimplugin sxwimplugin textfilterplugin \
	txtim barcodegenerator colorwheel docim oldscribusformat pdbim
.for _n in ${PLUGINS}
MAKE_FLAGS+=	lib${_n}_la_LDFLAGS='-module -avoid-version'
.endfor

post-install:
	rm -rf ${WRKINST}/usr/local/share/doc/scribus
	mv ${WRKINST}/usr/local/share/doc/${DISTNAME} \
	    ${WRKINST}/usr/local/share/doc/scribus

.include <bsd.port.mk>
