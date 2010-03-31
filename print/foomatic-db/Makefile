# $OpenBSD: Makefile,v 1.7 2010/03/31 14:44:28 ajacoutot Exp $

PKG_ARCH=		*

COMMENT=		Foomatic PPD data

V=			20091207
DISTNAME=		foomatic-db-4.0-${V}
PKGNAME=		foomatic-db-4.0.${V}p0
CATEGORIES=		print

HOMEPAGE=		http://www.linux-foundation.org/en/OpenPrinting/Database/Foomatic

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 - MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# tarballs are only available for a 24 hour period
#MASTER_SITES=		http://www.openprinting.org/download/foomatic/
MASTER_SITES=		http://www.bsdfrog.org/OpenBSD/distfiles/

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-ppds-to-cups

RUN_DEPENDS=		::print/foomatic-db-engine

WRKDIST=		${WRKDIR}/foomatic-db-${V}

NO_BUILD=		Yes
NO_REGRESS=		Yes

pre-configure:
	perl -pi -e 's,!!LOCALBASE!!,${LOCALBASE},g' \
		${WRKSRC}/configure

.include <bsd.port.mk>
