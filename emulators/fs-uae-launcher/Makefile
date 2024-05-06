COMMENT =		launcher for the FS-UAE Amiga emulator

MODPY_EGG_VERSION =	3.1.68
DISTNAME =		fs-uae-launcher-${MODPY_EGG_VERSION}
EXTRACT_SUFX =		.tar.xz
CATEGORIES =		emulators x11
HOMEPAGE =		http://fs-uae.net/
MAINTAINER =		Edd Barrett <edd@openbsd.org>
REVISION =		1

# GPLv2
PERMIT_PACKAGE =	Yes

SITES =		${HOMEPAGE}files/FS-UAE-Launcher/Stable/${MODPY_EGG_VERSION}/

MODULES =		lang/python

# The fs-uae-launcher distfile contains some bundled Python deps:
#
#  - A modified (stripped down) version amitools: For now we do use this, but
#    if a dedicated port of amitools appears later, we can use it instead.
#
#  - oyoyo: At the time of writing is at version 0.0.0dev (since 2012) so it
#    hardly seems worth making a port for.
RUN_DEPENDS =		emulators/fs-uae \
			devel/pygame${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			x11/py-qt5${MODPY_FLAVOR} \
			graphics/py-opengl${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

# fs-uae-launcher shouldn't be installed into the system Python tree as it
# contains some modules whose names clash with unrelated modules on PyPI
# (arcade, workspace, launcher). To avoid future name clashes, we install into
# a custom location and patch the top-level script to update the PYTHONPATH.
#
# https://github.com/FrodeSolheim/fs-uae-launcher/issues/85
FS_PYTHONPATH=${TRUEPREFIX}/share/fs-uae-launcher/python${MODPY_VERSION}
MODPY_DISTUTILS_INSTALLARGS += --install-lib=${FS_PYTHONPATH}
SUBST_VARS += FS_PYTHONPATH

post-install:
	${SUBST_CMD} ${PREFIX}/bin/fs-uae-launcher
	rm -rf ${PREFIX}/share/fs-uae-launcher/python${MODPY_VERSION}/fsgs/res/input/{windows,macos}
	find ${PREFIX}/share/fs-uae-launcher/python${MODPY_VERSION} \
		\( -name '*windows.conf' -or -name '*macos.conf' -or \
		   -name '*macosx.conf' -or -name '*for_windows*.ini' \) \
		-delete

NO_TEST =		Yes

.include <bsd.port.mk>
