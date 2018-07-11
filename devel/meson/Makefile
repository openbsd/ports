# $OpenBSD: Makefile,v 1.33 2018/07/11 11:51:14 ajacoutot Exp $

COMMENT=		next-generation build system

MODPY_EGG_VERSION=	${GH_TAGNAME}
GH_ACCOUNT=		mesonbuild
GH_PROJECT=		meson
GH_TAGNAME=		0.47.1
EPOCH=			0

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
