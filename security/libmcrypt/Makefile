# $OpenBSD: Makefile,v 1.2 2000/12/14 17:37:40 brad Exp $

DISTNAME=	libmcrypt-2.4.7
CATEGORIES=	security
NEED_VERSION=	1.340
MASTER_SITES=	http://mcrypt.hellug.gr/lib/ \
		ftp://argeas.cs-net.gr/pub/unix/mcrypt

HOMEPAGE=	http://mcrypt.hellug.gr/lib/

LIB_DEPENDS=	mhash.2:security/mhash

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

.include <bsd.port.mk>
