COMMENT =	doxygen wrapper for KDE
DISTNAME =	kapidox-${VERSION}
FULLPKGNAME =	${PKGNAME}${FLAVOR_EXT}

WANTLIB- =

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes

SUBST_VARS =	DISTNAME

# XXX TODO
# install_requires=["doxypypy", "doxyqml", "requests", "jinja2", "pyyaml"]

# Dirty hack to override CONFIGURE_STYLE
do-configure:
	@${MODPY_BUILD_TARGET}

do-build:
	@${MODPY_BUILD_TARGET}

do-install:
	@${MODPY_INSTALL_TARGET}

do-test:
	@${MODPY_TEST_TARGET}

.include <bsd.port.mk>
