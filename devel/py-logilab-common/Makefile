# $OpenBSD: Makefile,v 1.15 2016/04/27 12:02:52 shadchin Exp $

COMMENT=	common low-level libraries for logilab projects

MODPY_EGG_VERSION =	1.2.0
DISTNAME=	logilab-common-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel

HOMEPAGE=	https://www.logilab.org/project/logilab-common

MAINTAINER =	Alexandr Shadchin <shadchin@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =		Yes

MODULES=	lang/python

RUN_DEPENDS =	devel/py-six${MODPY_FLAVOR}
TEST_DEPENDS =	${FULLPKGNAME}:${FULLPKGPATH} \
		${RUN_DEPENDS} \
		devel/py-tz${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR ?=

.if !${FLAVOR:Mpython3}
TEST_DEPENDS +=	devel/py-mxDateTime
.endif

MODPY_SETUPTOOLS =	Yes

do-test:
	@cd ${WRKSRC} && ${MODPY_BIN} bin/pytest

.if ${FLAVOR:Mpython3}
post-install:
	mv ${PREFIX}/bin/pytest ${PREFIX}/bin/pytest${MODPY_BIN_SUFFIX}
.endif

.include <bsd.port.mk>
