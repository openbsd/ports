COMMENT=	tool for deleting old Mastodon toots

MODPY_DISTV=	3.2.1
DISTNAME=	ephemetoot-${MODPY_DISTV}
REVISION=	0

CATEGORIES=	www

# GPLv3+
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	textproc/py-yaml>=5.0 \
		www/py-mastodon.py \
		www/py-requests

.include <bsd.port.mk>
