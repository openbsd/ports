ONLY_FOR_ARCHS =	amd64

COMMENT =		Steam and GOG launchers and Winetricks for Wine

PKGNAME =		wine-extras-20261017

WINETRICKS_V =		20260125
DIST_TUPLE =		github Winetricks winetricks ${WINETRICKS_V} .

CATEGORIES =		emulators
HOMEPAGE =		https://github.com/Winetricks/winetricks
MAINTAINER =		Thomas Frohwein <thfr@openbsd.org>

# LGPLv2.1+ (Winetricks); clients are downloaded at runtime.
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		emulators/wine \
			archivers/7zip,-main \
			archivers/cabextract \
			archivers/gtar \
			innoextract->=1.13.0:archivers/innoextract \
			archivers/unzip \
			archivers/xz \
			archivers/zstd \
			fonts/liberation-fonts \
			net/curl

NO_BUILD =		Yes
NO_TEST =		Yes

post-patch:
	${SUBST_CMD} ${WRKSRC}/src/winetricks

# wine-gog not functional at this point. Uncomment once it works.
do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/src/winetricks ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/src/winetricks.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/winetricks
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/winetricks
	${SUBST_PROGRAM} ${FILESDIR}/wine-steam ${PREFIX}/bin/wine-steam
	#${SUBST_PROGRAM} ${FILESDIR}/wine-gog ${PREFIX}/bin/wine-gog

.include <bsd.port.mk>
