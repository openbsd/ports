COMMENT =		launcher for the FS-UAE Amiga emulator

MODPY_DISTV =	3.1.68
DISTNAME =		fs-uae-launcher-${MODPY_DISTV}
EXTRACT_SUFX =		.tar.xz
CATEGORIES =		emulators x11
HOMEPAGE =		http://fs-uae.net/
MAINTAINER =		Edd Barrett <edd@openbsd.org>
REVISION =		2

# GPLv2
PERMIT_PACKAGE =	Yes

SITES =		${HOMEPAGE}files/FS-UAE-Launcher/Stable/${MODPY_DISTV}/

MODULES =		lang/python
MODPY_PYBUILD =		setuptools

# The fs-uae-launcher distfile contains some bundled Python deps:
#
#  - A modified (stripped down) version amitools: For now we do use this, but
#    if a dedicated port of amitools appears later, we can use it instead.
#
#  - oyoyo: At the time of writing is at version 0.0.0dev (since 2012) so it
#    hardly seems worth making a port for.
RUN_DEPENDS =		emulators/fs-uae \
			devel/pygame \
			devel/py-six \
			x11/py-qt5 \
			graphics/py-opengl \
			www/py-requests

# fs-uae-launcher shouldn't be installed into the system Python tree as it
# contains some modules whose names clash with unrelated modules on PyPI
# (arcade, workspace, launcher). To avoid future name clashes, we install into
# a custom location and patch the top-level script to update the PYTHONPATH.
#
# https://github.com/FrodeSolheim/fs-uae-launcher/issues/85
FS_PYTHONPATH=${TRUEPREFIX}/share/fs-uae-launcher/python${MODPY_VERSION}
SUBST_VARS += FS_PYTHONPATH

post-install:
	${INSTALL_DATA_DIR} `dirname ${WRKINST}${FS_PYTHONPATH}`
	mv ${WRKINST}${MODPY_SITEPKG} ${WRKINST}${FS_PYTHONPATH}
	${SUBST_CMD} ${PREFIX}/bin/fs-uae-launcher
	rm -rf ${PREFIX}/share/fs-uae-launcher/python${MODPY_VERSION}/fsgs/res/input/{windows,macos}
	find ${PREFIX}/share/fs-uae-launcher/python${MODPY_VERSION} \
		\( -name '*windows.conf' -or -name '*macos.conf' -or \
		   -name '*macosx.conf' -or -name '*for_windows*.ini' \) \
		-delete

NO_TEST =		Yes

.include <bsd.port.mk>
