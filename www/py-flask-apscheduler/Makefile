COMMENT=	support for the APScheduler in Flask

MODPY_EGG_VERSION=1.13.1
DISTNAME=	Flask-APScheduler-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME:L}
CATEGORIES=	www
MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>
REVISION=	0

# Apache-2.0
PERMIT_PACKAGE=	Yes

MODULES=		lang/python
MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools

FLAVORS=		python3
FLAVOR=			python3

RUN_DEPENDS=		devel/py-dateutil${MODPY_FLAVOR} \
			sysutils/py-apscheduler${MODPY_FLAVOR} \
			www/py-flask${MODPY_FLAVOR}

.include <bsd.port.mk>
