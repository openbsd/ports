# $OpenBSD: Makefile,v 1.5 2008/12/20 21:15:56 ajacoutot Exp $

COMMENT=		Foomatic PPD generator

V=			20070919
DISTNAME=		foomatic-db-engine-3.0-${V}
PKGNAME=		foomatic-db-engine-3.0.${V}p0
CATEGORIES=		print

HOMEPAGE=		http://www.linux-foundation.org/en/OpenPrinting/Database/Foomatic

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# tarballs are only available for a 24 hour period
#MASTER_SITES=		http://www.linuxprinting.org/download/foomatic/
MASTER_SITES=		http://jakemsr.trancell.org/distfiles/ \
			http://openbsd.dead-parrot.de/distfiles/ \
			http://www.bsdfrog.org/OpenBSD/distfiles/

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

pre-configure:
	@perl -pi -e 's,!!LOCALBASE!!,${LOCALBASE},g' \
		${WRKSRC}/foomatic-combo-xml.c

.include <bsd.port.mk>
