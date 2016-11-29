# $OpenBSD: Makefile,v 1.8 2016/11/29 13:57:28 sthen Exp $

COMMENT=	secure RTP library

GH_ACCOUNT=	cisco
GH_PROJECT=	libsrtp
GH_TAGNAME=	v1.5.4
REVISION=	0

CATEGORIES=	security telephony

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=	gnu

CFLAGS+=		-fPIC

USE_GMAKE=	Yes
TEST_TARGET=	runtest

.include <bsd.port.mk>
