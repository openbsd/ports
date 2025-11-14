COMMENT=	file transport adapter for requests

MODPY_DISTV=	2.1.0
DISTNAME=	requests_file-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:S/_/-/}

CATEGORIES=	www

HOMEPAGE=	https://github.com/dashea/requests-file/

MAINTAINER=	George Rosamond <george@nycbug.org>

# Apache2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes

RUN_DEPENDS=	www/py-requests

.include <bsd.port.mk>
