# $OpenBSD: Makefile,v 1.23 2019/05/13 18:06:43 danj Exp $

COMMENT=		common low-level libraries for logilab projects

MODPY_EGG_VERSION =	1.4.0
DISTNAME=		logilab-common-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		devel
REVISION=		1

HOMEPAGE=		https://www.logilab.org/project/logilab-common

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR}
TEST_DEPENDS =		${BASE_PKGPATH}=${MODPY_EGG_VERSION} \
			${RUN_DEPENDS} \
			devel/py-tz${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.if !${FLAVOR:Mpython3}
TEST_DEPENDS +=		devel/py-mxDateTime
.endif

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -W once -m logilab.common.pytest

post-install:
	mv ${PREFIX}/bin/logilab-pytest{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>
