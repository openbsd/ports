# $OpenBSD: Makefile,v 1.25 2004/01/15 08:47:30 espie Exp $

COMMENT=		"ftp replacement with advanced user interface"

DISTNAME=		ncftp-3.1.7
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

PATCHFILES=		ncftp-317-v6-20040108b.diff.gz:0
PATCH_DIST_STRIP=	-p1
FAKE_FLAGS=		DESTDIR=${WRKINST} mandir=${WRKINST}${TRUEPREFIX}/man

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ENV=		TAR=/bin/tar

NO_REGRESS=		Yes

.include <bsd.port.mk>
