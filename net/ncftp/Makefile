# $OpenBSD: Makefile,v 1.17 2001/11/30 16:57:03 naddy Exp $

COMMENT=		"ftp replacement with advanced user interface"

PKGNAME=		${DISTNAME:S/-src//}
DISTNAME=		ncftp-3.0.4-src
CATEGORIES=		net
NEED_VERSION=		1.500
HOMEPAGE=		http://www.ncftp.com/ncftp/

MAINTAINER=		Eric Jackson <shinobi@monkey.org>

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.ncftp.com/ncftp/
MASTER_SITES0=		ftp://ftp.kame.net/pub/kame/misc/

PATCHFILES=		ncftp-304-v6-20011102.diff.gz:0
PATCH_DIST_STRIP=	-p1

CONFIGURE_STYLE=	gnu dest
WRKDIST=		${WRKDIR}/${DISTNAME:S/-src//}

NO_REGRESS=		Yes

.include <bsd.port.mk>
