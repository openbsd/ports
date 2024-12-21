COMMENT=	support for the APScheduler in Flask

MODPY_DISTV=1.13.1
DISTNAME=	Flask-APScheduler-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:L}
CATEGORIES=	www
MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>
REVISION=	1

# Apache-2.0
PERMIT_PACKAGE=	Yes

MODULES=		lang/python
MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools

RUN_DEPENDS=		devel/py-dateutil \
			sysutils/py-apscheduler \
			www/py-flask

.include <bsd.port.mk>
