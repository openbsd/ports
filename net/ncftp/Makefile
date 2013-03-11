# $OpenBSD: Makefile,v 1.43 2013/03/11 11:35:49 espie Exp $

COMMENT=	ftp replacement with advanced user interface

DISTNAME=	ncftp-3.2.5
CATEGORIES=	net
HOMEPAGE=	http://www.ncftp.com/ncftp/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c ncurses

MASTER_SITES=	ftp://ftp.ncftp.com/ncftp/ \
		ftp://ftp.mirrorservice.org/sites/ftp.ncftp.com/ncftp/
MASTER_SITES:=	${MASTER_SITES} ${MASTER_SITES:=older_versions/}
MASTER_SITES0=	http://shell.uugrn.org/~naddy/

DISTFILES=	${DISTNAME}-src.tar.bz2
PATCHFILES=	ncftp-325-v6.diff.gz:0		# former KAME v6 patch
PATCH_DIST_STRIP=-p1

AUTOCONF_VERSION=2.13
AUTOCONF=	autoconf -l autoconf_local
AUTOHEADER=	autoheader -l autoconf_local

CONFIGURE_STYLE=autoconf
CONFIGURE_ARGS=	--disable-ccdv
CONFIGURE_ENV=	TAR=/bin/tar
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/sh

NO_TEST=	Yes

.include <bsd.port.mk>
