# $OpenBSD: Makefile,v 1.29 2004/07/29 23:06:02 naddy Exp $

COMMENT=		"ftp replacement with advanced user interface"

DISTNAME=		ncftp-3.1.8
CATEGORIES=		net
HOMEPAGE=		http://www.ncftp.com/ncftp/

MAINTAINER=		Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.ncftp.com/ncftp/
MASTER_SITES0=		ftp://ftp.kame.net/pub/kame/misc/
DISTFILES=		${DISTNAME}-src.tar.gz

PATCHFILES=		ncftp-3181-v6-20040728.diff.gz:0
PATCH_DIST_STRIP=	-p1

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ENV=		TAR=/bin/tar
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/sh
FAKE_FLAGS=		DESTDIR=${WRKINST} mandir=${WRKINST}${TRUEPREFIX}/man

NO_REGRESS=		Yes

.include <bsd.port.mk>
