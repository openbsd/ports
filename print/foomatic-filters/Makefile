# $OpenBSD: Makefile,v 1.16 2010/04/27 14:01:43 ajacoutot Exp $

COMMENT=		Foomatic PPD print filters

DISTNAME=		foomatic-filters-4.0.4
PKGNAME=		${DISTNAME}p3
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

INSTALL_TARGET=		install-main install-cups

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

CONFIGURE_ARGS=		--enable-file-converter-check=no

MAKE_ENV=		${CONFIGURE_ENV}

FAKE_FLAGS=		ETCDIR="${PREFIX}/share/examples/foomatic"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure.ac \
		${WRKSRC}/foomaticrip.c ${WRKSRC}/filter.conf

.include <bsd.port.mk>
