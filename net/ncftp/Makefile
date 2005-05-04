# $OpenBSD: Makefile,v 1.34 2005/05/04 14:43:29 naddy Exp $

COMMENT=	"ftp replacement with advanced user interface"

DISTNAME=	ncftp-3.1.9
CATEGORIES=	net
HOMEPAGE=	http://www.ncftp.com/ncftp/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
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

PATCHFILES=	ncftp-319-v6-20050419.diff.gz:0
PATCH_DIST_STRIP=-p1

CONFIGURE_STYLE=gnu dest
CONFIGURE_ENV=	TAR=/bin/tar
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/sh

# configure script switches to /usr/local/share/man if there's a
# /usr/local/share around, so enforce /usr/local/man manually.
CONFIGURE_ARGS+=--mandir='$${DESTDIR}${PREFIX}/man'

NO_REGRESS=	Yes

.include <bsd.port.mk>
