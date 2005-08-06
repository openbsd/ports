# $OpenBSD: Makefile,v 1.3 2005/08/06 20:37:47 alek Exp $

COMMENT=	"distributed memory object caching system"

DISTNAME=	memcached-1.1.12
CATEGORIES=	misc

HOMEPAGE=	http://www.danga.com/memcached/

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	${HOMEPAGE}/dist/

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-libevent=/usr

.include <bsd.port.mk>
