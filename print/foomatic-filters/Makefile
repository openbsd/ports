# $OpenBSD: Makefile,v 1.46 2013/08/21 13:36:10 ajacoutot Exp $

COMMENT=		Foomatic PPD print filters

DISTNAME=		foomatic-filters-4.0.17
CATEGORIES=		print
REVISION=		4

HOMEPAGE=		http://www.linuxfoundation.org/en/OpenPrinting/Database/Foomatic

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c dbus-1 m

MASTER_SITES=		http://www.openprinting.org/download/foomatic/

LIB_DEPENDS=		x11/dbus

RUN_DEPENDS=		print/ghostscript/gnu \
			print/a2ps

# don't enforce dependency on colord; it'll be used only if found
#RUN_DEPENDS +=	graphics/colord

AUTOMAKE_VERSION=1.10
AUTOCONF_VERSION=2.65

INSTALL_TARGET=		install-main install-cups

CONFIGURE_STYLE=	autoconf automake
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

CONFIGURE_ARGS=		--enable-file-converter-check=no \
			--with-file-converter=a2ps

MAKE_ENV=		${CONFIGURE_ENV}

FAKE_FLAGS=		ETCDIR="${PREFIX}/share/examples/foomatic"
USE_GROFF =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure.ac \
		${WRKSRC}/foomaticrip.c ${WRKSRC}/filter.conf

.include <bsd.port.mk>
