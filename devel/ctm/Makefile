# $OpenBSD: Makefile,v 1.3 2000/10/22 15:41:46 espie Exp $
# Poul-Henning Kamp <phk@FreeBSD.org>

DISTNAME=		ctmkit
PKGNAME=		ctm
CATEGORIES=     	net devel

HOMEPAGE=		"http://www.openbsd.org/ctm.html"
#HOMEPAGE=		"http://www.FreeBSD.org/handbook/synching.html#CTM"

MAINTAINER=		ports@openbsd.org

LICENSE_TYPE=		NONE # Beerware?
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
FAKE_FLAGS=		PREFIX=${PREFIX} DESTDIR=${WRKINST}

MASTER_SITES=		http://www.nemeton.com.au/src/

WRKBUILD=		${WRKSRC}/ctm

.include <bsd.port.mk>
