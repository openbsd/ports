# $OpenBSD: Makefile,v 1.1.1.1 2003/02/23 21:27:28 danh Exp $

NTP_VERSION=	4.1.74

CONFIGURE_ARGS+= --with-openssl-libdir=/usr/lib \
		--with-openssl-incdir=/usr/include \
		--with-crypto=openssl
CONFIGURE_ENV=	CFLAGS="${CFLAGS} -DHAVE_IPV6"

.include <bsd.port.mk>
