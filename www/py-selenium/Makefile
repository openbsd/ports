COMMENT=	Python bindings for Selenium WebDriver

# 4.x uses SeleniumManager, a command-line tool implemented in rust.
# it's built as part of the py-selenium build but that currently fails as
# lzma-sys hits "failed to read dir xz-5.2/src/liblzma/common"
MODPY_DISTV=	3.141.0
DISTNAME=	selenium-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:L}
CATEGORIES=	www devel
REVISION=	4

HOMEPAGE=	https://www.selenium.dev/

# Apache
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

NO_TEST=	Yes

.include <bsd.port.mk>
