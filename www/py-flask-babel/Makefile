COMMENT=	support for i18n/l10n in Flask applications

MODPY_DISTV =	4.0.0
DISTNAME=	flask_babel-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:S/_/-/g}

CATEGORIES=	www

# Apache-2.0
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD=		poetry-core

RUN_DEPENDS =		devel/py-babel>=2.12 \
			devel/py-tz>=2022.7 \
			www/py-flask>=2.0 \
			www/py-jinja2>=3.1

NO_TEST =		Yes

.include <bsd.port.mk>
