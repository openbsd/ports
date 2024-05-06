COMMENT =		readthedocs.org theme for Sphinx

MODPY_EGG_VERSION =	1.2.2
REVISION =		2

GH_ACCOUNT =		readthedocs
GH_PROJECT =		sphinx_rtd_theme
GH_TAGNAME =		${MODPY_EGG_VERSION}

PKGNAME =		py-${DISTNAME}

SITES.deb =		${SITE_DEBIAN:=main/s/sphinx-rtd-theme/}
DISTFILES.deb =		sphinx-rtd-theme_${MODPY_EGG_VERSION}+dfsg-1.debian.tar.xz

CATEGORIES =		textproc

# MIT/OFL
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
BUILD_DEPENDS =		textproc/py-sphinxcontrib/jquery${MODPY_FLAVOR}
RUN_DEPENDS =		textproc/py-sphinxcontrib/jquery${MODPY_FLAVOR}

MODPY_PYBUILD =		setuptools

FLAVORS =		python3
FLAVOR =		python3

NO_TEST =		Yes

# upstream distfiles require use of npm to fetch dependencies.
# use files from Debian's packaging to provide those dep's and use
# their patchset to make use of them.
post-patch:
	mv ${WRKDIR}/debian ${WRKSRC}/
	cd ${WRKSRC}; for i in `cat debian/patches/series`; do \
	    patch -Ep1 -z.orig.deb < debian/patches/$$i; done

.include <bsd.port.mk>
