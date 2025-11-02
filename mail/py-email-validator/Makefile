COMMENT=	email address syntax and deliverability validation

MODPY_DISTV =		2.3.0
DISTNAME =		email_validator-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME:S/_/-/}

CATEGORIES =		mail

# Unlicense
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		net/py-idna>=2.0.0 \
			net/py-dnspython>=2.0.0

.include <bsd.port.mk>
