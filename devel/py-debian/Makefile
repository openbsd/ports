COMMENT=	Debian package related modules

MODPY_DISTV=	1.0.1
DISTNAME=	python-debian-${MODPY_DISTV}
PKGNAME=	py-debian-${MODPY_DISTV}

CATEGORIES=	devel

HOMEPAGE=	https://salsa.debian.org/python-debian-team/python-debian

MAINTAINER=	Alvar Penning <post@0x21.biz>

# GPL-2.0-or-later
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes

RUN_DEPENDS=	textproc/py-charset-normalizer

# Some tests require dpkg artefacts under /usr/share/dpkg/
NO_TEST=	Yes

.include <bsd.port.mk>
