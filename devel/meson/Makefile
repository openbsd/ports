# $OpenBSD: Makefile,v 1.47 2019/03/10 14:50:51 ajacoutot Exp $

COMMENT=		next-generation build system

MODPY_EGG_VERSION=	${GH_TAGNAME}
GH_ACCOUNT=		mesonbuild
GH_PROJECT=		meson
GH_TAGNAME=		0.49.2
EPOCH=			0
REVISION=		2

CATEGORIES=		devel

HOMEPAGE=		http://mesonbuild.com/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS=		devel/ninja

pre-configure:
	sed -i "s,share/man,man," ${WRKSRC}/setup.py
	sed -i "s,/usr/bin,${PREFIX}/bin,g" \
		${WRKSRC}/data/com.mesonbuild.install.policy

# can't use MODPY_BIN:
# AssertionError: "meso[32 chars]thon3', '/hack/objdirs/pobj/meson-0.49.2/meson[14 chars]py']" != "meso[32 chars]thon3.6', '/hack/objdirs/pobj/meson-0.49.2/mes[16 chars]py']"
# - meson_command is ['/usr/local/bin/python3', '/hack/objdirs/pobj/meson-0.49.2/meson-0.49.2/meson.py']
# + meson_command is ['/usr/local/bin/python3.6', '/hack/objdirs/pobj/meson-0.49.2/meson-0.49.2/meson.py']
do-test:
	ln -sf ${LOCALBASE}/clang ${WRKDIR}/bin/clang-objc
	cd ${WRKSRC} && ${LOCALBASE}/bin/python${MODPY_MAJOR_VERSION} \
		./run_tests.py --failfast

.include <bsd.port.mk>
