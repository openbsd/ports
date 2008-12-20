# $OpenBSD: Makefile,v 1.5 2008/12/20 21:15:56 ajacoutot Exp $

COMMENT=		Foomatic PPD data

V=			20070708
DISTNAME=		foomatic-db-3.0-${V}
PKGNAME=		foomatic-db-3.0.${V}p0
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

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-ppds-to-cups

PKG_ARCH=		*

WRKDIST=		${WRKDIR}/foomatic-db-${V}

NO_BUILD=		Yes
NO_REGRESS=		Yes

.include <bsd.port.mk>
