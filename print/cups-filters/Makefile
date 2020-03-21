# $OpenBSD: Makefile,v 1.174 2020/03/21 13:51:45 ajacoutot Exp $

BROKEN-alpha=	ICE in cupsfilters/image-jpeg.c:316
BROKEN-hppa=	ICE on filter/pdftopdf/qpdf_pdftopdf.cc:147

COMMENT=	OpenPrinting CUPS filters

DISTNAME=	cups-filters-1.27.3

CATEGORIES=	print

SHARED_LIBS +=  cupsfilters          1.2      # 1.0
SHARED_LIBS +=  fontembed            1.0      # 1.0

HOMEPAGE=	http://www.linuxfoundation.org/collaborate/workgroups/openprinting

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3 - LGPLv2 - GPLv2+ - MIT
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} avahi-client avahi-common avahi-glib
WANTLIB += c cups dbus-1 expat ffi fontconfig freetype gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0 hogweed
WANTLIB += iconv idn2 intl jpeg lcms2 lzma m nettle openjp2 p11-kit
WANTLIB += pcre png poppler poppler-cpp qpdf tasn1 tiff unistring
WANTLIB += z zstd

MASTER_SITES=	https://www.openprinting.org/download/cups-filters/

# cc1plus: error: unrecognized command line option "-std=c++0x"
COMPILER =	base-clang ports-gcc

.if ${MACHINE_ARCH} == "hppa"
CFLAGS +=	-O0
.endif

# gs cups driver, pdftocairo, mutool
BUILD_DEPENDS=	print/ghostscript/gnu \
		print/poppler,-utils \
		textproc/mupdf
RUN_DEPENDS=	print/ghostscript/gnu \
		print/poppler,-utils \
		textproc/mupdf

LIB_DEPENDS=	print/cups,-libs \
		print/poppler \
		print/qpdf

# make it easier for users: bring in foomatic-db and allow the
# regeneration of PPD files from share/foomatic/db/source/*/*.xml
RUN_DEPENDS +=	print/foomatic-db-engine

# don't enforce dependency on colord; it'll be used only if found
#RUN_DEPENDS +=	graphics/colord

FAKE_FLAGS=	pkgfontconfigdir=${PREFIX}/share/examples/cups-filters \
		pkgcupsserverrootdir=${PREFIX}/share/examples/cups-filters/cups

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

CONFIGURE_ARGS=	--with-gs-path=${LOCALBASE}/bin/gs \
		--with-test-font-path=${X11BASE}/lib/X11/fonts/TTF/DejaVuSans.ttf \
		--with-shell=/bin/ksh \
		--without-php \
		--disable-braille

# http://bzr.linuxfoundation.org/loggerhead/openprinting/cups-filters/revision/7554
CONFIGURE_ENV +=ac_cv_prog_CUPS_PDFTOPS=${LOCALBASE}/bin/pdftops

FLAVORS=	ldap
FLAVOR?=

.if ${FLAVOR:Mldap}
WANTLIB += crypto lber-2.4 ldap-2.4 sasl2 ssl
LIB_DEPENDS +=		databases/openldap
.else
CONFIGURE_ARGS +=	--disable-ldap
.endif

DEBUG_PACKAGES=		${BUILD_PACKAGES}

pre-configure:
	sed -i -e 's,/usr/share/cups,${LOCALBASE}/share/cups,g;' \
		-e 's,/usr/bin,${LOCALBASE}/bin,g' \
		${WRKSRC}/filter/{gstoraster.c,gstopxl}
	sed -i 's,/etc/cups,${SYSCONFDIR}/cups,g' \
		${WRKSRC}/filter/foomatic-rip/spooler.c
	sed -i 's,/usr/local,${LOCALBASE},g' \
		${WRKSRC}/filter/foomatic-rip/foomaticrip.c

post-install:
	rm -rf ${WRKINST}/rc?.d
# handle old filters looking for these
	cd ${PREFIX}/libexec/cups/filter && ln -s gstopxl pstopxl
	cd ${PREFIX}/libexec/cups/filter && ln -s gstoraster pstoraster

.include <bsd.port.mk>
