# $OpenBSD: Makefile,v 1.2 2016/05/26 21:39:47 sthen Exp $

COMMENT=	privilege-separated letsencrypt client

V=		0.1.5
GH_ACCOUNT=	kristapsdz
GH_PROJECT=	letskencrypt
GH_TAGNAME=	VERSION_${V:S/./_/g}
DISTNAME=	letskencrypt-$V

CATEGORIES=	security security/letsencrypt

HOMEPAGE =	https://kristaps.bsd.lv/letskencrypt/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto ssl tls

NO_TEST=	Yes

ALL_TARGET=	letskencrypt
FAKE_FLAGS=	PREFIX=${WRKINST}${PREFIX}

.include <bsd.port.mk>
