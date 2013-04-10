# $OpenBSD: Makefile,v 1.15 2013/04/10 17:17:23 ajacoutot Exp $

# XXX remove @exec-update when we branch 5.4-current

COMMENT=	OpenPrinting CUPS filters

DISTNAME=	cups-filters-1.0.33
CATEGORIES=	print
REVISION=	0

SHARED_LIBS +=  cupsfilters               0.0 # 1.0
SHARED_LIBS +=  fontembed                 0.0 # 1.0

HOMEPAGE=	http://www.linuxfoundation.org/collaborate/workgroups/openprinting

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3 - LGPLv2 - GPLv2+ - MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += asn1 avahi-client avahi-common avahi-glib c crypto
WANTLIB += cups cupsimage dbus-1 expat fontconfig freetype glib-2.0
WANTLIB += gssapi iconv ijs intl jpeg krb5 lcms2 m openjpeg pcre
WANTLIB += png poppler pthread qpdf ssl stdc++ tiff z pthread-stubs

MASTER_SITES=	http://www.openprinting.org/download/cups-filters/

# cc1plus: error: unrecognized command line option "-std=c++0x"
MODULES +=	gcc4
MODGCC4_ARCHS=	*
MODGCC4_LANGS=	c++

BUILD_DEPENDS=	print/ghostscript/gnu

LIB_DEPENDS=	print/cups,-libs \
		print/ijs \
		print/poppler \
		print/qpdf

# make it easier for users: bring in foomatic-filters, ghostscript
# (with gstoraster) and allow the regeneration of PPD files from
# share/foomatic/db/source/*/*.xml
RUN_DEPENDS +=	print/foomatic-db-engine

USE_GMAKE=	Yes

MAKE_FLAGS=	DLOPEN_LIBS=""

FAKE_FLAGS=	pkgfontconfigdir=${PREFIX}/share/examples/cups-filters \
		pkgcupsserverrootdir=${PREFIX}/share/examples/cups-filters/cups

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include \
			-I${LOCALBASE}/include \
			-I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-browseremoteprotocols=DNSSD,CUPS \
		--with-test-font-path=${X11BASE}/lib/X11/fonts/TTF/DejaVuSans.ttf \
		--with-acroread-path=${LOCALBASE}/bin/acroread \
		--with-gs-path=${LOCALBASE}/bin/gs \
		--without-php

# prefer pdftops over gs -- see README under ${WRKSRC}
CONFIGURE_ARGS +=	--with-pdftops=pdftops
BUILD_DEPENDS +=	print/poppler,-utils
RUN_DEPENDS +=		print/poppler,-utils # print/ghostscript/gnu

post-install:
	rm -rf ${WRKINST}/rc?.d

.include <bsd.port.mk>
