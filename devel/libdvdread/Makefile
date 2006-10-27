#$OpenBSD: Makefile,v 1.15 2006/10/27 07:14:24 espie Exp $
CATEGORIES=		devel

COMMENT=		"accessing DVD files"
DISTNAME=		libdvdread-0.9.7
PKGNAME=		${DISTNAME}
HOMEPAGE=		http://www.dtek.chalmers.se/groups/dvd/
MASTER_SITES=		${HOMEPAGE}dist/

MAINTAINER=		Marc Espie <espie@openbsd.org>

CONFIGURE_STYLE=	gnu
USE_LIBTOOL=		Yes

SHARED_LIBS +=	dvdread              4.2      # .5.1

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

SEPARATE_BUILD=		Yes

.include <bsd.port.mk>
