COMMENT=	CalDAV client to sync to Remind

MODPY_DISTV=	0.8.0
GH_ACCOUNT=	jspricke
GH_PROJECT=	remind-caldav
GH_TAGNAME=	v${MODPY_DISTV}
CATEGORIES=	misc

HOMEPAGE=	https://github.com/jspricke/remind-caldav

MAINTAINER=	Martin Ziemer <horrad@horrad.de>

# GPLv3
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	productivity/py-caldav \
		misc/py-remind \
		devel/py-dateutil \
		textproc/py-vobject

NO_TEST=	Yes
MODULES=	lang/python
MODPY_PYBUILD=	setuptools

.include <bsd.port.mk>
