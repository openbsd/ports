COMMENT=		OpenPrinting CUPS filters

V=			2.0.1
DISTNAME=		cups-filters-${V}

CATEGORIES=		print

HOMEPAGE=		https://wiki.linuxfoundation.org/openprinting/cups-filters

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3 - LGPLv2 - GPLv2+ - MIT
PERMIT_PACKAGE=		Yes

WANTLIB += avahi-client avahi-common c crypto cups cupsfilters
WANTLIB += dbus-1 execinfo exif expat fontconfig freetype gmp
WANTLIB += hogweed iconv idn2 intl jpeg lcms2 m nettle p11-kit
WANTLIB += png poppler-cpp ppd pthread qpdf ssl tasn1 tiff unistring
WANTLIB += z

SITES=	https://github.com/OpenPrinting/cups-filters/releases/download/${V}/

# cc1plus: error: unrecognized command line option "-std=c++0x"
COMPILER=		base-clang ports-gcc

USE_GMAKE=		Yes

LIB_DEPENDS=		print/libcupsfilters \
			print/libppd \
			print/qpdf

# make it easier for users: bring in foomatic-db and allow the
# regeneration of PPD files from share/foomatic/db/source/*/*.xml
RUN_DEPENDS +=		print/foomatic-db-engine

FAKE_FLAGS=		pkgfontconfigdir=${PREFIX}/share/examples/cups-filters \
			pkgcupsserverrootdir=${PREFIX}/share/examples/cups-filters/cups

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--with-shell=/bin/ksh \
			--disable-mutool

DEBUG_PACKAGES=		${BUILD_PACKAGES}

pre-configure:
	sed -i 's,/etc/cups,${SYSCONFDIR}/cups,g' \
		${WRKSRC}/filter/foomatic-rip/spooler.c
	sed -i 's,/usr/local,${LOCALBASE},g' \
		${WRKSRC}/filter/foomatic-rip/foomaticrip.c

post-install:
# handle old filters looking for these
	cd ${PREFIX}/libexec/cups/filter && ln -s gstopxl pstopxl
	cd ${PREFIX}/libexec/cups/filter && ln -s gstoraster pstoraster

.include <bsd.port.mk>
