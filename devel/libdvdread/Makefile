#$OpenBSD: Makefile,v 1.11 2006/01/03 14:55:18 bernd Exp $
CATEGORIES=	devel

COMMENT=	"accessing DVD files"
DISTNAME=	libdvdread-0.9.4
PKGNAME=	${DISTNAME}p2
SHARED_LIBS=		dvdread 3.0
MODGNU_SHARED_LIBS=	dvdread '-export-symbols-regex "(DVD.*|ifo.*|nav.*)"'
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
