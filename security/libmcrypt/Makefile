# $OpenBSD: Makefile,v 1.5 2001/02/26 04:48:29 avsm Exp $

DISTNAME=	libmcrypt-2.4.9
CATEGORIES=	security
NEED_VERSION=	1.351
MASTER_SITES=	ftp://mcrypt.hellug.gr/pub/mcrypt/libmcrypt/ \
		ftp://argeas.cs-net.gr/pub/unix/mcrypt

HOMEPAGE=	http://mcrypt.hellug.gr/lib/

LIB_DEPENDS=	mhash.2::security/mhash

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

.include <bsd.port.mk>
