# $OpenBSD: Makefile,v 1.4 2020/04/17 16:14:40 naddy Exp $

# MASTER_SITES changes at each version; when looking for updates, try searching
# ${HOMEPAGE} for a linux driver, for e.g. sx200
PORTROACH=		ignore
MASTER_SITES=		https://download3.ebz.epson.net/dsc/f/03/00/10/49/18/f3016be6120a7271a6d9cb64872f817bce1920b8/

COMMENT=		printer driver for Epson ESC/P-R inkjets

DISTNAME=		epson-inkjet-printer-escpr-1.7.7
EXTRACT_SUFX=		-1lsb3.2.tar.gz

SHARED_LIBS +=	escpr                     0.0 # 1.0

CATEGORIES=		print

HOMEPAGE=		http://download.ebz.epson.net/dsc/search/01/search/?OSC=LX

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=		Yes

WANTLIB += avahi-client avahi-common c cups cupsimage dbus-1 ffi
WANTLIB += gmp gnutls hogweed iconv idn2 intl m nettle p11-kit
WANTLIB += pthread tasn1 unistring z

LIB_DEPENDS=		devel/gettext,-runtime \
			print/cups,-libs

CONFIGURE_STYLE=	autoreconf
AUTORECONF=		sh ${WRKSRC}/bootstrap
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.16

CONFIGURE_ARGS=		--with-cupsfilterdir=${LOCALBASE}/libexec/cups/filter \
			--with-cupsppddir=${LOCALBASE}/share/ppd

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

DEBUG_PACKAGES=		${BUILD_PACKAGES}

# dos line-endings in files needing patch
post-extract:
	cd ${WRKSRC} && perl -i -pe 's/\r$$//' src/linux_cmn.c \
		lib/epson-escpr-api.c lib/epson-typedefs.h lib/epson-usb.c

.include <bsd.port.mk>
