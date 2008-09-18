# $OpenBSD: Makefile,v 1.5 2008/09/18 13:37:41 ajacoutot Exp $

COMMENT=		Foomatic PPD print filters

DISTNAME=		foomatic-filters-3.0.2
PKGNAME=		${DISTNAME}p1
CATEGORIES=		print

HOMEPAGE=		http://www.linux-foundation.org/en/OpenPrinting/Database/Foomatic

MAINTAINER=		Jacob Meuser <jakemsr@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.linuxprinting.org/download/foomatic/

RUN_DEPENDS=		::print/ghostscript/gnu \
			::print/enscript

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CUPS="${LOCALBASE}/libexec/cups" \
			CUPS_FILTERS="${LOCALBASE}/libexec/cups/filter" \
			TEXTTOPS="${LOCALBASE}/libexec/cups/filter/texttops" \
			PPR="${LOCALBASE}/lib/ppr" \
			PPR_INTERFACES="${LOCALBASE}/lib/ppr/interfaces" \
			PPR_LIB="${LOCALBASE}/lib/ppr/lib" \
			A2PS="${LOCALBASE}/bin/a2ps" \
			ENSCRIPT="${LOCALBASE}/bin/enscript" \
			MPAGE="${LOCALBASE}/bin/mpage"

FAKE_FLAGS=		ETCDIR="${PREFIX}/share/examples/foomatic"

PKG_ARCH=		*

NO_REGRESS=		Yes

.include <bsd.port.mk>
