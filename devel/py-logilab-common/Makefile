# $OpenBSD: Makefile,v 1.20 2017/01/03 19:19:48 landry Exp $

COMMENT=		common low-level libraries for logilab projects

MODPY_EGG_VERSION =	1.3.0
DISTNAME=		logilab-common-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		devel
REVISION=		0

HOMEPAGE=		https://www.logilab.org/project/logilab-common

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

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
	@cd ${WRKSRC} && ${MODPY_BIN} -m logilab.common.pytest

post-install:
	mv ${PREFIX}/bin/logilab-pytest ${PREFIX}/bin/logilab-pytest${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
