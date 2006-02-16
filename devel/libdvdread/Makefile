#$OpenBSD: Makefile,v 1.12 2006/02/16 11:08:26 espie Exp $
CATEGORIES=	devel

COMMENT=	"accessing DVD files"
DISTNAME=	libdvdread-0.9.5
PKGNAME=	${DISTNAME}
SHARED_LIBS=		dvdread 4.0
HOMEPAGE=	http://www.dtek.chalmers.se/groups/dvd/
MASTER_SITES=	${HOMEPAGE}dist/

MAINTAINER=	Marc Espie <espie@openbsd.org>

CONFIGURE_STYLE=	gnu
USE_LIBTOOL=Yes

# GPL
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes
PERMIT_PACKAGE_FTP=Yes

SEPARATE_BUILD=Yes
.include <bsd.port.mk>
