# $OpenBSD: Makefile,v 1.22 2013/08/15 18:41:21 kili Exp $

# XXX remove @exec-update when we branch 5.4-current

COMMENT=	OpenPrinting CUPS filters

DISTNAME=	cups-filters-1.0.35
REVISION=	0
CATEGORIES=	print

SHARED_LIBS +=  cupsfilters               0.0 # 1.0
SHARED_LIBS +=  fontembed                 0.0 # 1.0

HOMEPAGE=	http://www.linuxfoundation.org/collaborate/workgroups/openprinting

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3 - LGPLv2 - GPLv2+ - MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += asn1 avahi-client avahi-common avahi-glib c com_err
WANTLIB += crypto cups cupsimage dbus-1 expat fontconfig freetype
WANTLIB += glib-2.0 gssapi heimbase ijs jpeg krb5 lcms2 m openjpeg
WANTLIB += pcre png poppler pthread pthread-stubs qpdf roken ssl
WANTLIB += tiff wind z

MASTER_SITES=	http://www.openprinting.org/download/cups-filters/

# cc1plus: error: unrecognized command line option "-std=c++0x"
MODULES +=	gcc4
MODGCC4_ARCHS=	*
MODGCC4_LANGS=	c++

BUILD_DEPENDS=	print/ghostscript/gnu

MODULES +=	devel/gettext
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
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
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
