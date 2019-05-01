# $OpenBSD: Makefile,v 1.1.1.1 2019/05/01 04:04:03 kmos Exp $

COMMENT=	download data from remote data services (such as THREDDS)

MODPY_EGG_VERSION=	0.8.0
DISTNAME=		siphon-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		net

HOMEPAGE=		http://unidata.github.io/cftime/

MAINTAINER=		Martin Reindl <martin@catai.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODPY_SETUPTOOLS=	Yes
MODPY_PI=		Yes

MODULES=	lang/python

FLAVORS=	python3
FLAVOR?=

RUN_DEPENDS+=	devel/py-protobuf${MODPY_FLAVOR} \
		math/py-numpy${MODPY_FLAVOR} \
		math/py-pandas${MODPY_FLAVOR} \
		www/py-beautifulsoup4${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR}

.if !${FLAVOR:Mpython3}
RUN_DEPENDS +=          devel/py-enum34${MODPY_FLAVOR}
.endif


MODPY_PYTEST=	Yes
TEST_DEPENDS=	devel/py-coveralls${MODPY_FLAVOR} \
		devel/py-test-cov${MODPY_FLAVOR}

.include <bsd.port.mk>
