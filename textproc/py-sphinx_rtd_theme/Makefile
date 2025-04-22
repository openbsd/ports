COMMENT =		readthedocs.org theme for Sphinx

MODPY_DISTV =		3.0.2
GH_ACCOUNT =		readthedocs
GH_PROJECT =		sphinx_rtd_theme
GH_TAGNAME =		${MODPY_DISTV}

PKGNAME =		py-${DISTNAME}

SITES.deb =		${SITE_DEBIAN:=main/s/sphinx-rtd-theme/}
DISTFILES.deb =		sphinx-rtd-theme_${MODPY_DISTV}+dfsg-2.debian.tar.xz

CATEGORIES =		textproc

# MIT/OFL
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools

BUILD_DEPENDS =		textproc/py-sphinxcontrib/jquery \
			textproc/py-docutils
RUN_DEPENDS =		textproc/py-sphinxcontrib/jquery \
			textproc/py-docutils

# upstream distfiles require use of npm to fetch dependencies.
# use files from Debian's packaging to provide those dep's and use
# their patchset to make use of them.
post-patch:
	mv ${WRKDIR}/debian ${WRKSRC}/
	cd ${WRKSRC}; \
	    for i in `grep -v tests-configuration.patch debian/patches/series`; do \
	    patch -Ep1 -z.orig.deb < debian/patches/$$i; done

.include <bsd.port.mk>
