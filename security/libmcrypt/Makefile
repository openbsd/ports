# $OpenBSD: Makefile,v 1.10 2001/07/06 09:27:04 avsm Exp $

COMMENT=	"interface to access block/stream encryption algorithms"

DISTNAME=	libmcrypt-2.4.15
CATEGORIES=	security
NEED_VERSION=	1.363
MASTER_SITES=	ftp://mcrypt.hellug.gr/pub/mcrypt/libmcrypt/ \
		ftp://argeas.cs-net.gr/pub/unix/mcrypt/libmcrypt/

HOMEPAGE=	http://mcrypt.hellug.gr/lib/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

LIB_DEPENDS=	mhash.2::security/mhash
USE_LIBTOOL=	Yes

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

.include <bsd.port.mk>
