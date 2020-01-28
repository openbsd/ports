# $OpenBSD: Makefile,v 1.3 2020/01/28 20:45:01 kurt Exp $

COMMENT=	flexible I/O tester

GH_ACCOUNT=	axboe
GH_PROJECT=	fio
GH_TAGNAME=	fio-3.17
PKGNAME=	${GH_TAGNAME}
REVISION=	1

CATEGORIES=	benchmarks

HOMEPAGE=	https://fio.readthedocs.io/

MAINTAINER=	Kurt Miller <kurt@openbsd.org>

# GPLv2 + MORAL-LICENSE which encourages users to mention fio and which
# version was used when publishing results and that features or bug fixes
# be sent upstream to fio
PERMIT_PACKAGE=	Yes

WANTLIB=	c m pthread z

USE_GMAKE=	Yes
SEPARATE_BUILD= Yes

CONFIGURE_STYLE=simple

MAKE_FLAGS=	V=1 \
		EXTFLAGS="${CFLAGS}"

CONFIGURE_ARGS=	--disable-optimizations \
		--disable-native

.include <bsd.port.mk>
