# $OpenBSD: Makefile,v 1.6 2001/03/24 01:34:00 avsm Exp $

DISTNAME=	libmcrypt-2.4.10
CATEGORIES=	security
NEED_VERSION=	1.363
MASTER_SITES=	ftp://mcrypt.hellug.gr/pub/mcrypt/libmcrypt/ \
		ftp://argeas.cs-net.gr/pub/unix/mcrypt/libmcrypt/

HOMEPAGE=	http://mcrypt.hellug.gr/lib/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

COMMENT=	interface to access block and stream encryption algorithms

LIB_DEPENDS=	mhash.2::security/mhash

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

.include <bsd.port.mk>
