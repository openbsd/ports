COMMENT =		readthedocs.org theme for Sphinx

MODPY_EGG_VERSION =	0.5.1
GH_ACCOUNT =		readthedocs
GH_PROJECT =		sphinx_rtd_theme
GH_TAGNAME =		${MODPY_EGG_VERSION}

PKGNAME =		py-${DISTNAME}
DISTFILES =		${DISTNAME}.tar.gz \
			sphinx-rtd-theme_${MODPY_EGG_VERSION}+dfsg-1.debian.tar.xz:0
REVISION =		0

CATEGORIES =		textproc

# MIT/OFL
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes
MASTER_SITES0 =		${MASTER_SITE_DEBIAN:=main/s/sphinx-rtd-theme/}

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
