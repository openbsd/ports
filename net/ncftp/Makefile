# $OpenBSD: Makefile,v 1.21 2003/02/12 15:20:05 naddy Exp $

COMMENT=		"ftp replacement with advanced user interface"

DISTNAME=		ncftp-3.1.5
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
DISTFILES=		${DISTNAME}-src.tar.gz

PATCHFILES=		ncftp-315-v6-20030112.diff.gz:0
PATCH_DIST_STRIP=	-p1

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ENV=		TAR=/bin/tar

NO_REGRESS=		Yes

.include <bsd.port.mk>
