COMMENT =		modern terminal IRC client

MODGO_MODNAME =		git.sr.ht/~delthas/senpai
MODGO_VERSION =		v0.4.1
DISTNAME =		senpai-${MODGO_VERSION}

CATEGORIES =		net
MAINTAINER =		Johannes Thyssen Tishman <jtt@openbsd.org>

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB += 		c pthread
MODULES =		lang/go
BUILD_DEPENDS =		textproc/scdoc
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic

USE_GMAKE =		yes
MAKE_FLAGS =		GIT=

post-build:
	${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} -C ${WRKSRC} ${MAKE_FLAGS} doc

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/senpai.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/senpai.5 ${PREFIX}/man/man5
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/contrib/senpai.desktop \
		${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/48x48/apps
	${INSTALL_DATA} ${WRKSRC}/res/icon.48.png \
		${PREFIX}/share/icons/hicolor/48x48/apps/senpai.png
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/scalable/apps
	${INSTALL_DATA} ${WRKSRC}/res/icon.svg \
		${PREFIX}/share/icons/hicolor/scalable/apps/senpai.svg

.include "modules.inc"
.include <bsd.port.mk>
