# $OpenBSD: Makefile,v 1.1.1.1 2016/05/21 10:44:21 sthen Exp $

COMMENT=	privilege-separated letsencrypt client

V=		0.1.3
GH_ACCOUNT=	kristapsdz
GH_PROJECT=	letskencrypt
GH_TAGNAME=	VERSION_${V:S/./_/g}
DISTNAME=	letskencrypt-$V

CATEGORIES=	security security/letsencrypt

HOMEPAGE =	https://kristaps.bsd.lv/letskencrypt/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto curl idn json-c nghttp2 ssl z

LIB_DEPENDS=	net/curl \
		devel/json-c>=0.12p1
NO_TEST=	Yes

ALL_TARGET=	letskencrypt

.include <bsd.port.mk>
