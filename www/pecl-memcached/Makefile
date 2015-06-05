# $OpenBSD: Makefile,v 1.2 2015/06/05 06:00:23 robert Exp $

COMMENT=	PHP interface to memcached via libmemcached

DISTNAME=	memcached-2.2.0
REVISION=	0

# PHP
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += m memcached pthread sasl2 z

MODULES=	lang/php/pecl
LIB_DEPENDS=	devel/libmemcached

CONFIGURE_STYLE= gnu

CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib ${LDFLAGS}"

# tests need gmake
USE_GMAKE=	Yes
TEST_DEPENDS=	misc/memcached
TEST_IS_INTERACTIVE= ensure that memcached is running first

.include <bsd.port.mk>
