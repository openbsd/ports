# $OpenBSD: Makefile,v 1.1.1.1 2000/11/27 15:41:46 avsm Exp $

DISTNAME=		libmcrypt-2.4.7
CATEGORIES=     	security
NEED_VERSION=		1.340

HOMEPAGE=		http://mcrypt.hellug.gr/lib/
MAINTAINER=		Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=		mhash.2:security/mhash

MASTER_SITES=		http://mcrypt.hellug.gr/lib/ \
			ftp://argeas.cs-net.gr/pub/unix/mcrypt

CONFIGURE_STYLE=	gnu
USE_LIBTOOL=		Yes

.include <bsd.port.mk>
