# $OpenBSD: Makefile,v 1.32 2014/03/24 12:51:18 ajacoutot Exp $

COMMENT=		Foomatic PPD generator

DISTNAME=		foomatic-db-engine-4.0.11
CATEGORIES=		print

HOMEPAGE=		http://www.linux-foundation.org/en/OpenPrinting/Database/Foomatic

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m xml2 z

MASTER_SITES=		http://www.openprinting.org/download/foomatic/

MODULES=		converters/libiconv

LIB_DEPENDS=		textproc/libxml
RUN_DEPENDS=		databases/p5-DBI \
			curl-*|wget-*:net/curl

# Cannot read file /usr/local/share/foomatic/db/oldprinterids!
RUN_DEPENDS +=		print/foomatic-db

USE_GMAKE=		Yes
USE_GROFF =		Yes
NO_TEST=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-gscheck
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libxml2" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBDIR="${LOCALBASE}/share/foomatic" \
			FOOMATIC_RIP="${LOCALBASE}/libexec/cups/filter/foomatic-rip" \
			GS="${LOCALBASE}/bin/gs" \
			A2PS="${LOCALBASE}/bin/a2ps" \
			GS="${LOCALBASE}/bin/gs" \
			WGET="${LOCALBASE}/bin/wget" \
			CURL="${LOCALBASE}/bin/curl" \
			SMBCLIENT="${LOCALBASE}/bin/smbclient" \
			DEVFD3="|/bin/cat >&3" \
			DEVFD0="-" \
			LPD_SPOOL="/var/spool/output" \
			LPD_LOG="/var/log/lpd-errs" \
			LPD_BIN="/usr/sbin/lpd" \
			LPD_LPR="/usr/bin/lpr" \
			LPD_LPQ="/usr/bin/lpq" \
			LPD_LPRM="/usr/bin/lprm" \
			LPD_LPC="/usr/sbin/lpc" \
			LPRNG_CHECKPC="${LOCALBASE}/sbin/checkpc" \
			CUPS_ETC="${SYSCONFDIR}/cups" \
			CUPS_ADMIN="${LOCALBASE}/sbin/lpadmin" \
			CUPS_LPSTAT="${LOCALBASE}/bin/lpstat" \
			CUPS_PPDS="${LOCALBASE}/share/cups/model" \
			CUPS_FILTERS="${LOCALBASE}/libexec/cups/filter" \
			CUPS_BACKENDS="${LOCALBASE}/libexec/cups/backend" \
			CUPS_CONF="${SYSCONFDIR}/cups/printers.conf" \
			CUPS_LPR="${LOCALBASE}/bin/lpr" \
			CUPS_LPQ="${LOCALBASE}/bin/lpq" \
			CUPS_LPRM="${LOCALBASE}/bin/lprm" \
			CUPS_LPC="${LOCALBASE}/sbin/lpc" \
			CUPS_LP="${LOCALBASE}/bin/lp" \
			CUPS_CANCEL="${LOCALBASE}/bin/cancel" \
			CUPS_ENABLE="${LOCALBASE}/sbin/cupsenable" \
			CUPS_DISABLE="${LOCALBASE}/sbin/cupsdisable" \
			CUPS_ACCEPT="${LOCALBASE}/sbin/cupsaccept" \
			CUPS_REJECT="${LOCALBASE}/sbin/cupsreject" \
			CUPS_LPMOVE="${LOCALBASE}/sbin/lpmove" \
			CUPS_LPOPTIONS="${LOCALBASE}/bin/lpoptions" \
			CUPS_LPINFO="${LOCALBASE}/sbin/lpinfo" \
			CUPS_PCONF="${SYSCONFDIR}/cups/printers.conf" \
			PRINTCAP="/etc/printcap"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/foomatic-combo-xml.c \
		${WRKSRC}/Makefile.in ${WRKSRC}/configure

# make CUPS generate Foomatic PPDs on demand (see patch-Makefile_in)
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/cups/driver
	ln -sf ${TRUEPREFIX}/bin/foomatic-ppdfile \
		${WRKINST}/${LOCALBASE}/libexec/cups/driver/foomatic

.include <bsd.port.mk>
