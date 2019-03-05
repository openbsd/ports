# $OpenBSD: Makefile,v 1.44 2019/03/05 09:32:26 ajacoutot Exp $

COMMENT=		next-generation build system

MODPY_EGG_VERSION=	${GH_TAGNAME}
GH_ACCOUNT=		mesonbuild
GH_PROJECT=		meson
GH_TAGNAME=		0.49.2
EPOCH=			0
REVISION=		0

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

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} ./run_tests.py

.include <bsd.port.mk>
