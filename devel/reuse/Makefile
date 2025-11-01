COMMENT=	tool for compliance with the REUSE recommendations

MODPY_DISTV=	6.2.0
DISTNAME=	reuse-${MODPY_DISTV}

CATEGORIES=	devel

# https://github.com/fsfe/reuse-tool
HOMEPAGE=	https://reuse.software/

MAINTAINER=	Alvar Penning <post@0x21.biz>

# Apache-2.0 AND CC0-1.0 AND CC-BY-SA-4.0 AND GPL-3.0-or-later"
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	poetry-core
MODPY_PI=	Yes

BUILD_DEPENDS=	devel/gettext,-tools
RUN_DEPENDS=	www/py-jinja2>=3.0.0 \
		textproc/py-license-expression>=21.6.14 \
		devel/py-debian>=0.1.48 \
		textproc/py-tomlkit>=0.8 \
		devel/py-attrs>=23.2 \
		devel/py-click>=8.1 \
		devel/py-magic>=0.4.12 \
		textproc/py-charset-normalizer>=2.0.5 \
		textproc/py-chardet>=3.0.2

TEST_DEPENDS=	devel/py-freezegun

pre-test:
	@if [[ -d ${WRKINST} ]]; then echo; echo \
		"tests only work before 'make fake' is run"; \
		echo; exit 1; fi

.include <bsd.port.mk>
