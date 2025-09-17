COMMENT=	tool for compliance with the REUSE recommendations

MODPY_DISTV=	5.1.1
DISTNAME=	reuse-${MODPY_DISTV}

CATEGORIES=	devel

HOMEPAGE=	https://reuse.software/

MAINTAINER=	Alvar Penning <post@0x21.biz>

# Apache-2.0 AND CC0-1.0 AND CC-BY-SA-4.0 AND GPL-3.0-or-later"
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	poetry-core
MODPY_PI=	Yes

BUILD_DEPENDS=	devel/gettext,-tools
RUN_DEPENDS=	www/py-jinja2>=3.0.0 \
		devel/py-binaryornot>=0.4.4 \
		devel/py-boolean.py>=3.8 \
		textproc/py-license-expression>=1.0 \
		devel/py-debian>=0.1.34 \
		textproc/py-tomlkit>=0.8 \
		devel/py-attrs>=21.3 \
		devel/py-click>=8.0

TEST_DEPENDS=	devel/py-freezegun

.include <bsd.port.mk>
