COMMENT=	FTP client with advanced user interface

DISTNAME=	ncftp-3.2.6
CATEGORIES=	net
HOMEPAGE=	https://www.ncftp.com/ncftp/
REVISION=	2

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
