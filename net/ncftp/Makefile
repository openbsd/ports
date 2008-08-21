# $OpenBSD: Makefile,v 1.38 2008/08/21 14:48:02 naddy Exp $

COMMENT=	ftp replacement with advanced user interface

DISTNAME=	ncftp-3.2.2
CATEGORIES=	net
HOMEPAGE=	http://www.ncftp.com/ncftp/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c ncurses

MASTER_SITES=	ftp://ftp.ncftp.com/ncftp/ \
		ftp://ftp.belnet.be/mirror/ftp.ncftp.com/ncftp/
MASTER_SITES0=	ftp://ftp.kame.net/pub/kame/misc/ \
		ftp://ftp.belnet.be/mirror/ftp.kame.net/pub/kame/misc/
DISTFILES=	${DISTNAME}-src.tar.gz

PATCHFILES=	ncftp-322-v6-20080821.diff.gz:0
PATCH_DIST_STRIP=-p1

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	TAR=/bin/tar
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/sh

NO_REGRESS=	Yes

.include <bsd.port.mk>
