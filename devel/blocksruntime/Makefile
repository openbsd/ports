# $OpenBSD: Makefile,v 1.1.1.1 2017/05/25 11:48:11 sthen Exp $

COMMENT=	implementation of Apple "Blocks" runtime interfaces

GH_ACCOUNT=	mackyle
GH_PROJECT=	blocksruntime
GH_COMMIT=	b5c5274daf1e0e46ecc9ad8f6f69889bce0a0a5d

DISTNAME=	blocksruntime-0.20140704

CATEGORIES=	devel

HOMEPAGE=	http://mackyle.github.io/blocksruntime/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# MIT/UIUC
PERMIT_PACKAGE_CDROM=	Yes

do-build:
	cd ${WRKSRC}; CC="${CC}" CFLAGS="${CFLAGS}" ./buildlib

do-install:
	cd ${WRKSRC}; prefix="${TRUEPREFIX}" ./installlib

do-test:
	cd ${WRKSRC}; CC="/usr/bin/clang" ./checktests

.include <bsd.port.mk>
