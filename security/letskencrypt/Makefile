# $OpenBSD: Makefile,v 1.3 2016/06/04 13:31:53 sthen Exp $

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

# uses pledge()
WANTLIB += c crypto ssl tls

NO_TEST=	Yes

ALL_TARGET=	letskencrypt
FAKE_FLAGS=	PREFIX=${WRKINST}${PREFIX}

.include <bsd.port.mk>
