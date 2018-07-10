# $OpenBSD: Makefile,v 1.32 2018/07/10 12:29:16 ajacoutot Exp $

COMMENT=		next-generation build system

MODPY_EGG_VERSION=	${GH_TAGNAME}
GH_ACCOUNT=		mesonbuild
GH_PROJECT=		meson
GH_TAGNAME=		0.47.0
EPOCH=			0

MASTER_SITES0=		https://github.com/mesonbuild/meson/commit/
PATCH_DIST_STRIP=	-p1
PATCHFILES=		b16ad458e696ed4460942ae6d73407e28008ccef.patch:0 \
			1247cfb9a93de32727ea9953aec8e4270204d0fc.patch:0 \
			e774cb98a13538ed4531824330e9e2818cad9f79.patch:0 \
			9c1e2556bc2e88feb0903c7c1290b86a60eca082.patch:0 \
			465f480eef2392cb8d1e92bf23f2689ed38a8782.patch:0 \
			896ce8b3eabfd34a71e0c4ed925976a2c39448df.patch:0 \
			d94f325e6dcbd2b0633d3c1796ed3c91cc1bf693.patch:0 \
			98e5a4ef5264c0473496836df2296146eb59cd4f.patch:0 \
			1846608d0ac057c4c6e38488a2bb35d179a0d23f.patch:0 \
			5e025df0d76e9f77d1756dd4b271a3f34e8ee383.patch:0 \
			e600bbe7f27d36c191faf9079c34f3d484979e05.patch:0 \
			cdbf3c05fc04b71fe41cb3c421fcbbfa1f9c458e.patch:0 \
			7e53da776639a801d40b0fa2b35380fdd44b8ca0.patch:0 \
			318f4bd10d2bed570ad341e0d39ed33a58065012.patch:0 \
			ff5fa1da9c36743c56a2879d017c0826dcfd3e50.patch:0 \
			bb38bafdc79d0f97498322084ec40fc8d029b003.patch:0

CATEGORIES=		devel

HOMEPAGE=		http://mesonbuild.com/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS=		devel/ninja

pre-configure:
	sed -ui "s,share/man,man," ${WRKSRC}/setup.py

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} ./run_tests.py

.include <bsd.port.mk>
