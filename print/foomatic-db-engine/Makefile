# $OpenBSD: Makefile,v 1.1.1.1 2007/09/09 14:42:02 ajacoutot Exp $

COMMENT=		Foomatic PPD generator

DISTNAME=		foomatic-db-engine-3.0.2
CATEGORIES=		print

HOMEPAGE=		http://www.linux-foundation.org/en/OpenPrinting/Database/Foomatic

MAINTAINER=		Jacob Meuser <jakemsr@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.linuxprinting.org/download/foomatic/

LIB_DEPENDS=		xml2.>=8::textproc/libxml
BUILD_DEPENDS=		::print/foomatic-filters
RUN_DEPENDS=		::print/foomatic-filters \
			::print/foomatic-db
WANTLIB=		c iconv m z

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--without-ppr \
			--disable-gscheck
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libxml2" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBDIR="${LOCALBASE}/share/foomatic" \
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
			CUPS_ENABLE="${LOCALBASE}/bin/enable" \
			CUPS_DISABLE="${LOCALBASE}/bin/disable" \
			CUPS_ACCEPT="${LOCALBASE}/sbin/accept" \
			CUPS_REJECT="${LOCALBASE}/sbin/reject" \
			CUPS_LPMOVE="${LOCALBASE}/sbin/lpmove" \
			CUPS_LPOPTIONS="${LOCALBASE}/bin/lpoptions" \
			CUPS_LPINFO="${LOCALBASE}/sbin/lpinfo"

NO_REGRESS=		Yes

.include <bsd.port.mk>
