COMMENT =		classic Redmond theme
CATEGORIES =		x11

# latest HEAD as of 22.12.2024, lots of changes after 3.0 in 2022
COMMIT =		f7ab895ae538335af3bffd500347d5500ffdb69b
DIST_TUPLE =		github	grassmunk	Chicago95	${COMMIT}	.
PKGNAME =		chicago95-theme-3.0pl20241222

# GPLv3+, MIT
PERMIT_PACKAGE =	Yes

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

RUN_DEPENDS =		audio/sox \
			devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+4,-guic

USE_GMAKE =		Yes
# only manual pages for Plus tool (skipped)
NO_BUILD =		Yes
NO_TEST =		Yes

PKG_ARCH =		*

EXAMPLES_DIR =		${PREFIX}/share/examples/${PKGSTEM}

# ${WRKSRC}/Makefile uses DESTDIR for all else, PLIST does @sample into /etc/
MAKE_FLAGS =		prefix=${PREFIX} \
			SYSCONFDIR=${DESTDIR}${EXAMPLES_DIR}

# base install(1) lacks -t
BUILD_DEPENDS =		sysutils/coreutils
FAKE_FLAGS =		installbin=/usr/local/bin/ginstall

# +30k files, pkg_locate(1) takes too long
UPDATE_PLIST_ARGS =	-F

post-install:
	sed -i /^Exec=/s,/usr,${TRUEPREFIX}, \
	    ${EXAMPLES_DIR}/xdg/autostart/*.desktop

.include <bsd.port.mk>
