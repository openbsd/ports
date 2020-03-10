# $OpenBSD: Makefile,v 1.47 2020/03/10 03:31:45 daniel Exp $

COMMENT=	FTP client with advanced user interface

DISTNAME=	ncftp-3.2.6
CATEGORIES=	net
HOMEPAGE=	http://www.ncftp.com/ncftp/
REVISION=	1

# Artistic
PERMIT_PACKAGE=	Yes

WANTLIB=	c curses

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
