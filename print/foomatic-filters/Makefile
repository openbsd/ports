# $OpenBSD: Makefile,v 1.14 2010/04/13 17:03:24 ajacoutot Exp $

COMMENT=		Foomatic PPD print filters

DISTNAME=		foomatic-filters-4.0.4
PKGNAME=		${DISTNAME}p1
CATEGORIES=		print

HOMEPAGE=		http://www.linuxfoundation.org/en/OpenPrinting/Database/Foomatic

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c m

MASTER_SITES=		http://www.linuxprinting.org/download/foomatic/ \
			http://www.openprinting.org/download/foomatic/ \
			http://www.linuxprinting.org/download/foomatic/oldstuff/ \
			http://www.openprinting.org/download/foomatic/oldstuff/

RUN_DEPENDS=		::print/ghostscript/gnu \
			::print/a2ps

AUTOCONF_VERSION=2.61

CONFIGURE_STYLE=	autoconf
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
			CUPS="${LOCALBASE}/libexec/cups" \
			CUPS_FILTERS="${LOCALBASE}/libexec/cups/filter" \
			CUPS_BACKENDS=${LOCALBASE}/libexec/cups/backend \
			PRINTCAP="/etc/printcap" \
			TEXTTOPS="${LOCALBASE}/libexec/cups/filter/texttops" \
			PPR="${LOCALBASE}/lib/ppr" \
			PPR_INTERFACES="${LOCALBASE}/lib/ppr/interfaces" \
			PPR_LIB="${LOCALBASE}/lib/ppr/lib" \
			A2PS="${LOCALBASE}/bin/a2ps" \
			ENSCRIPT="${LOCALBASE}/bin/enscript" \
			MPAGE="${LOCALBASE}/bin/mpage"

FAKE_FLAGS=		ETCDIR="${PREFIX}/share/examples/foomatic"

pre-configure:
	perl -pi -e 's,!!SYSCONFDIR!!,${SYSCONFDIR},g;' \
		-e 's,!!LOCALBASE!!,${LOCALBASE},g' \
		${WRKSRC}/configure
	${SUBST_CMD} ${WRKSRC}/foomaticrip.c ${WRKSRC}/filter.conf

.include <bsd.port.mk>
