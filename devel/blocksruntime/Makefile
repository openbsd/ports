# $OpenBSD: Makefile,v 1.4 2020/09/11 20:56:52 sthen Exp $

COMMENT=	implementation of Apple "Blocks" runtime interfaces

GH_ACCOUNT=	mackyle
GH_PROJECT=	blocksruntime
GH_COMMIT=	b5c5274daf1e0e46ecc9ad8f6f69889bce0a0a5d

DISTNAME=	blocksruntime-20181028

CATEGORIES=	devel

HOMEPAGE=	https://mackyle.github.io/blocksruntime/

# MIT/UIUC
PERMIT_PACKAGE=	Yes

do-build:
	cd ${WRKSRC}; CC="${CC}" CFLAGS="${CFLAGS}" ./buildlib

do-install:
	cd ${WRKSRC}; prefix="${TRUEPREFIX}" ./installlib

do-test:
	cd ${WRKSRC}; CC="/usr/bin/clang" ./checktests

.include <bsd.port.mk>
