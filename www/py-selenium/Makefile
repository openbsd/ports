COMMENT=	Python bindings for Selenium WebDriver

# 4.x uses SeleniumManager, a command-line tool implemented in rust.
# this can be made to build using MODCARGO_CRATES_KEEP=lzma-sys but then
# runtime fails "Invalid operating system", however selenium does work
# if installed in a venv using uv. To be investigated...
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
