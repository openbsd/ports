# $OpenBSD: Makefile,v 1.2 2004/12/22 11:48:33 alek Exp $

COMMENT=	"distributed memory object caching system"

DISTNAME=	memcached-1.1.11
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

NO_REGRESS=	Yes

.include <bsd.port.mk>
