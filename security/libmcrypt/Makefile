# $OpenBSD: Makefile,v 1.7 2001/04/09 13:25:08 avsm Exp $

COMMENT=	"interface to access block/stream encryption algorithms"

DISTNAME=	libmcrypt-2.4.10
CATEGORIES=	security
NEED_VERSION=	1.363
MASTER_SITES=	ftp://mcrypt.hellug.gr/pub/mcrypt/libmcrypt/ \
		ftp://argeas.cs-net.gr/pub/unix/mcrypt/libmcrypt/

HOMEPAGE=	http://mcrypt.hellug.gr/lib/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

LIB_DEPENDS=	mhash.2::security/mhash

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

.include <bsd.port.mk>
