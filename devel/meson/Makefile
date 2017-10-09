# $OpenBSD: Makefile,v 1.15 2017/10/09 07:40:25 ajacoutot Exp $

COMMENT=		next-generation build system

MODPY_EGG_VERSION=	${GH_TAGNAME}
GH_ACCOUNT=		mesonbuild
GH_PROJECT=		meson
GH_TAGNAME=		0.43.0

CATEGORIES=		devel

HOMEPAGE=		http://mesonbuild.com/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}
MODPY_ADJ_FILES=	meson.py \
			mesonbuild/scripts/*.py \
			mesonbuild/wrap/wraptool.py \
			mesonconf.py \
			mesonintrospect.py \
			wraptool.py

RUN_DEPENDS=		devel/ninja

pre-configure:
	sed -ui "s,share/man,man," ${WRKSRC}/setup.py

do-test:
	find ${WRKSRC} -name '*.py' -exec \
		sed -i "s,/usr/bin/env python3,${MODPY_BIN}," '{}' \+
	cd ${WRKSRC} && ${MODPY_BIN} ./run_tests.py

.include <bsd.port.mk>
