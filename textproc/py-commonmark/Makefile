COMMENT=		parser for the CommonMark markdown spec

MODPY_DISTV=	0.9.1
DISTNAME=		commonmark-${MODPY_DISTV}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		textproc
REVISION=		5

MAINTAINER=		Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS=		devel/py-future
TEST_DEPENDS=		devel/flake8 \
			devel/py-hypothesis

post-install:
	mv ${PREFIX}/bin/cmark ${PREFIX}/bin/commonmark

.include <bsd.port.mk>
