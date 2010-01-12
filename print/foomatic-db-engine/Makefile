# $OpenBSD: Makefile,v 1.7 2010/01/12 10:59:00 ajacoutot Exp $

COMMENT=		Foomatic PPD generator

DISTNAME=		foomatic-db-engine-4.0.3
PKGNAME=		${DISTNAME}p0
CATEGORIES=		print

HOMEPAGE=		http://www.linux-foundation.org/en/OpenPrinting/Database/Foomatic

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.linuxprinting.org/download/foomatic/ \
			http://www.openprinting.org/download/foomatic/ \
			http://www.linuxprinting.org/download/foomatic/oldstuff/ \
			http://www.openprinting.org/download/foomatic/oldstuff/

MODULES=		converters/libiconv

LIB_DEPENDS=		xml2.>=8::textproc/libxml
RUN_DEPENDS=		::print/foomatic-filters \
			:curl-*|wget-*:net/curl
WANTLIB=		c m z

USE_GMAKE=		Yes
NO_REGRESS=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-gscheck
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libxml2" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBDIR="${LOCALBASE}/share/foomatic" \
			FOOMATIC_RIP="${LOCALBASE}/bin/foomatic-rip" \
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
			CUPS_LPINFO="${LOCALBASE}/sbin/lpinfo" \
			CUPS_PCONF="${SYSCONFDIR}/cups/printers.conf" \
			PRINTCAP="/etc/printcap"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/foomatic-combo-xml.c \
		${WRKSRC}/Makefile.in
	perl -pi -e 's,!!SYSCONFDIR!!,${SYSCONFDIR},g;' \
		-e 's,!!LOCALBASE!!,${LOCALBASE},g' \
		${WRKSRC}/configure

# make CUPS generate Foomatic PPDs on demand 
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/cups/driver
	ln -sf ${TRUEPREFIX}/bin/foomatic-ppdfile \
		${WRKINST}/${LOCALBASE}/libexec/cups/driver/foomatic

.include <bsd.port.mk>
