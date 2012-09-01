# $OpenBSD: Makefile,v 1.2 2012/09/01 18:35:14 ajacoutot Exp $

COMMENT=	OpenPrinting CUPS filters

DISTNAME=	cups-filters-1.0.23
CATEGORIES=	print

SHARED_LIBS +=  cupsfilters               0.0 # 1.0
SHARED_LIBS +=  fontembed                 0.0 # 1.0

HOMEPAGE=	http://www.linuxfoundation.org/collaborate/workgroups/openprinting

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3 - LGPLv2 - GPLv2+ - MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += asn1 c crypto cups cupsimage expat fontconfig freetype
WANTLIB += gssapi ijs jpeg krb5 lcms2 m openjpeg png poppler pthread
WANTLIB += ssl stdc++ tiff z pcre qpdf

MASTER_SITES=	http://www.openprinting.org/download/cups-filters/

# cc1plus: error: unrecognized command line option "-std=c++0x"
MODULES +=	gcc4
MODGCC4_ARCHS=	*
MODGCC4_LANGS=	c++
MODGCC4_VERSION=4.6

BUILD_DEPENDS=	print/ghostscript/gnu

LIB_DEPENDS=	print/cups,-libs \
		print/ijs \
		print/poppler \
		print/qpdf

# make it easier for users: bring in foomatic-filters, ghostscript
# (with gstoraster) and allow the regeneration of PPD files from
# share/foomatic/db/source/*/*.xml
RUN_DEPENDS-main +=	print/foomatic-db-engine

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

FAKE_FLAGS=	pkgfontconfigdir=${PREFIX}/share/examples/cups-filters

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include \
			-I${LOCALBASE}/include \
			-I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-test-font-path=${X11BASE}/lib/X11/fonts/TTF/DejaVuSans.ttf \
		--without-php

# prefer pdftops over gs -- see README under ${WRKSRC}
CONFIGURE_ARGS +=	--with-pdftops=pdftops
BUILD_DEPENDS +=	print/poppler,-utils
RUN_DEPENDS +=		print/poppler,-utils # print/ghostscript/gnu

.include <bsd.port.mk>
