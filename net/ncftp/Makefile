# $OpenBSD: Makefile,v 1.16 2001/09/30 19:32:15 naddy Exp $

COMMENT=		"ftp replacement with advanced user interface"

PKGNAME=		${DISTNAME:S/-src//}
DISTNAME=		ncftp-3.0.3-src
CATEGORIES=		net
NEED_VERSION=		1.402
HOMEPAGE=		http://www.ncftp.com/ncftp/

MAINTAINER=		Eric Jackson <shinobi@monkey.org>

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.ncftp.com/ncftp/
MASTER_SITES0=		ftp://ftp.kame.net/pub/kame/misc/

PATCHFILES=		ncftp-303-v6-20010421.diff.gz:0
PATCH_DIST_STRIP=	-p1

CONFIGURE_STYLE=	gnu dest
WRKDIST=		${WRKDIR}/${DISTNAME:S/-src//}

.include <bsd.port.mk>
