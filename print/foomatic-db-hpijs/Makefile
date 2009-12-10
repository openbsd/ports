# $OpenBSD: Makefile,v 1.4 2009/12/10 10:58:45 ajacoutot Exp $

PKG_ARCH=		*

COMMENT=		Foomatic PPD data for hpijs

DISTNAME=		foomatic-db-hpijs-1.4-1
PKGNAME=		foomatic-db-hpijs-1.4
CATEGORIES=		print

HOMEPAGE=		http://www.linux-foundation.org/en/OpenPrinting/Database/Foomatic

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# tarballs are only available for a 24 hour period
#MASTER_SITES=		http://www.linuxprinting.org/download/foomatic/
MASTER_SITES=		http://www.bsdfrog.org/OpenBSD/distfiles/

RUN_DEPENDS=		::print/foomatic-db
BUILD_DEPENDS=		${RUN_DEPENDS}

CONFIGURE_STYLE=	gnu

USE_GMAKE=		Yes
NO_REGRESS=		Yes

pre-configure:
	@perl -pi -e 's,!!PREFIX!!,${PREFIX},g;' \
		-e 's,!!LOCALBASE!!,${LOCALBASE},g' \
		${WRKSRC}/configure

.include <bsd.port.mk>
