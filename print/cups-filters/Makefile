# $OpenBSD: Makefile,v 1.70 2015/06/12 08:09:16 ajacoutot Exp $

BROKEN-alpha=	ICE in cupsfilters/image-jpeg.c:316

COMMENT=	OpenPrinting CUPS filters

DISTNAME=	cups-filters-1.0.69
CATEGORIES=	print

SHARED_LIBS +=  cupsfilters          1.0      # 1.0
SHARED_LIBS +=  fontembed            0.0      # 1.0

HOMEPAGE=	http://www.linuxfoundation.org/collaborate/workgroups/openprinting

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3 - LGPLv2 - GPLv2+ - MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += avahi-client avahi-common avahi-glib c cups cupsimage
WANTLIB += dbus-1 expat ffi fontconfig freetype gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gmp gnutls gobject-2.0 hogweed ijs jpeg
WANTLIB += lcms2 m nettle openjpeg p11-kit pcre png poppler pthread
WANTLIB += pthread-stubs qpdf tasn1 tiff z

MASTER_SITES=	http://www.openprinting.org/download/cups-filters/

# cc1plus: error: unrecognized command line option "-std=c++0x"
MODULES +=	gcc4
MODGCC4_ARCHS=	*
MODGCC4_LANGS=	c++

.if ${MACHINE_ARCH} == "hppa"
CFLAGS +=	-O0
.endif

BUILD_DEPENDS=	print/ghostscript/gnu

MODULES +=	devel/gettext
LIB_DEPENDS=	print/cups,-libs \
		print/ijs \
		print/poppler \
		print/qpdf

# make it easier for users: bring in foomatic-db and allow the
# regeneration of PPD files from share/foomatic/db/source/*/*.xml
RUN_DEPENDS +=	print/foomatic-db-engine

# ghostscript cups driver
RUN_DEPENDS +=	print/ghostscript/gnu

# don't enforce dependency on colord; it'll be used only if found
#RUN_DEPENDS +=	graphics/colord

USE_GMAKE=	Yes

FAKE_FLAGS=	pkgfontconfigdir=${PREFIX}/share/examples/cups-filters \
		pkgcupsserverrootdir=${PREFIX}/share/examples/cups-filters/cups

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-test-font-path=${X11BASE}/lib/X11/fonts/TTF/DejaVuSans.ttf \
		--with-gs-path=${LOCALBASE}/bin/gs \
		--without-php

# prefer pdftops over gs -- see README under ${WRKSRC}
CONFIGURE_ARGS +=	--with-pdftops=pdftops
BUILD_DEPENDS +=	print/poppler,-utils
RUN_DEPENDS +=		print/poppler,-utils

pre-configure:
	perl -pi -e 's,/usr/share/cups,${LOCALBASE}/share/cups,g;' \
		-e 's,/usr/bin,${LOCALBASE}/bin,g' \
		${WRKSRC}/filter/{gstoraster.c,gstopxl}
	perl -pi -e 's,/etc/cups,${SYSCONFDIR}/cups,g' \
		${WRKSRC}/filter/foomatic-rip/spooler.c
	perl -pi -e 's,/usr/local,${LOCALBASE},g' \
		${WRKSRC}/filter/foomatic-rip/foomaticrip.c
	perl -pi -e 's,/bin/bash,/bin/ksh,g' ${WRKSRC}/filter/textonly

post-install:
	rm -rf ${WRKINST}/rc?.d
# handle old filters looking for these
	cd ${PREFIX}/libexec/cups/filter && ln -s gstopxl pstopxl
	cd ${PREFIX}/libexec/cups/filter && ln -s gstoraster pstoraster

.include <bsd.port.mk>
