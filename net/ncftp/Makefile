# $OpenBSD: Makefile,v 1.20 2002/08/27 19:55:09 nino Exp $

COMMENT=		"ftp replacement with advanced user interface"

PKGNAME=		${DISTNAME:S/-src//}
DISTNAME=		ncftp-3.1.4-src
CATEGORIES=		net
HOMEPAGE=		http://www.ncftp.com/ncftp/

MAINTAINER=		Eric Jackson <shinobi@monkey.org>

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.ncftp.com/ncftp/
MASTER_SITES0=		ftp://ftp.kame.net/pub/kame/misc/

PATCHFILES=		ncftp-314-v6-20020709.diff.gz:0
PATCH_DIST_STRIP=	-p1

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ENV=		TAR=/bin/tar
WRKDIST=		${WRKDIR}/${DISTNAME:S/-src//}

NO_REGRESS=		Yes

.include <bsd.port.mk>
