# $OpenBSD: Makefile,v 1.9 2009/08/03 13:02:55 giovanni Exp $

COMMENT=		Foomatic PPD print filters

DISTNAME=		foomatic-filters-3.0.2
PKGNAME=		${DISTNAME}p4
CATEGORIES=		print

HOMEPAGE=		http://www.linuxfoundation.org/en/OpenPrinting/Database/Foomatic

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.linuxprinting.org/download/foomatic/oldstuff/

RUN_DEPENDS=		::print/ghostscript/gnu \
			::print/a2ps

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
