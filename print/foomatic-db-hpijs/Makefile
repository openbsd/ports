# $OpenBSD: Makefile,v 1.2 2007/10/27 23:44:41 ajacoutot Exp $

COMMENT=		Foomatic PPD data for hpijs

DISTNAME=		foomatic-db-hpijs-20070820
CATEGORIES=		print

HOMEPAGE=		http://www.linux-foundation.org/en/OpenPrinting/Database/Foomatic

MAINTAINER=		Jacob Meuser <jakemsr@openbsd.org>

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

RUN_DEPENDS=		::print/foomatic-db
BUILD_DEPENDS=		${RUN_DEPENDS}

CONFIGURE_STYLE=	gnu

PKG_ARCH=		*

NO_REGRESS=		Yes

pre-configure:
	@perl -pi -e 's,!!PREFIX!!,${PREFIX},g;' \
		-e 's,!!LOCALBASE!!,${LOCALBASE},g' \
		${WRKSRC}/configure

.include <bsd.port.mk>
