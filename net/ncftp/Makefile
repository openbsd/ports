# $OpenBSD: Makefile,v 1.19 2002/06/25 20:27:22 naddy Exp $

COMMENT=		"ftp replacement with advanced user interface"

PKGNAME=		${DISTNAME:S/-src//}
DISTNAME=		ncftp-3.1.3-src
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

PATCHFILES=		ncftp-313-v6-20020617.diff.gz:0
PATCH_DIST_STRIP=	-p1

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ENV=		TAR=/bin/tar
WRKDIST=		${WRKDIR}/${DISTNAME:S/-src//}

NO_REGRESS=		Yes

.include <bsd.port.mk>
