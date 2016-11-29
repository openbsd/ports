# $OpenBSD: Makefile,v 1.7 2016/11/29 13:23:18 sthen Exp $

COMMENT=	secure RTP library

GH_ACCOUNT=	cisco
GH_PROJECT=	libsrtp
GH_TAGNAME=	v1.5.4

CATEGORIES=	security telephony

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

# libsrtp.a links libcrypto functions statically; shows as "Extra" but we
# want to ensure that libcrypto changes result in libsrtp being updated.
WANTLIB += crypto

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-openssl

CFLAGS+=		-fPIC

USE_GMAKE=	Yes
TEST_TARGET=	runtest

.include <bsd.port.mk>
