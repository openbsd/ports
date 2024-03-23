# SITES changes at each version; when looking for updates, try searching
# ${HOMEPAGE} for a linux driver, for e.g. sx200
PORTROACH=		ignore:1
SITES=			https://download3.ebz.epson.net/dsc/f/03/00/15/68/85/403b320df777490a52c42030397edd10363b2c56/

COMMENT=		printer driver for Epson ESC/P-R inkjets

V=			1.8.5
DISTNAME=		epson-inkjet-printer-escpr-${V}-1
EXTRACT_SUFX=		.src.rpm
WRKDIST=		${WRKDIR}/epson-inkjet-printer-escpr-${V}
PKGNAME=		epson-inkjet-printer-escpr-${V}

SHARED_LIBS +=  escpr                0.0      # 1.0

CATEGORIES=		print

HOMEPAGE=		http://download.ebz.epson.net/dsc/search/01/search/?OSC=LX

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=		Yes

WANTLIB += avahi-client avahi-common c crypto cups cupsimage dbus-1
WANTLIB += execinfo iconv intl m pthread ssl z

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

FIX_CRLF_FILES=		src/linux_cmn.c lib/epson-escpr-api.c \
			lib/epson-typedefs.h lib/epson-usb.c

post-extract:
	cd ${WRKDIR} && ${TAR} -xzf ${DISTNAME}.tar.gz

.include <bsd.port.mk>
