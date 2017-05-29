# $OpenBSD: Makefile,v 1.44 2017/05/29 15:12:23 naddy Exp $

COMMENT=	FTP client with advanced user interface

DISTNAME=	ncftp-3.2.6
CATEGORIES=	net
HOMEPAGE=	http://www.ncftp.com/ncftp/

MAINTAINER=	Daniel Dickman <daniel@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c ncurses

MASTER_SITES=	https://ftp.mirrorservice.org/sites/ftp.ncftp.com/ncftp/ \
		ftp://ftp.ncftp.com/ncftp/
MASTER_SITES:=	${MASTER_SITES} ${MASTER_SITES:=older_versions/}

DISTFILES=	${DISTNAME}-src.tar.xz

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-ccdv
CONFIGURE_ENV=	TAR=/bin/tar
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/sh

NO_TEST=	Yes

.include <bsd.port.mk>
