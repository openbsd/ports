COMMENT=	implementation of Apple "Blocks" runtime interfaces

GH_ACCOUNT=	mackyle
GH_PROJECT=	blocksruntime
GH_COMMIT=	9cc93ae2b58676c23fd02cf0c686fa15b7a3ff81
REVISION=	0

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
