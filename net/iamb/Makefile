COMMENT =		matrix client for vim addicts

GH_ACCOUNT =		ulyssa
GH_PROJECT =		iamb
GH_TAGNAME =		v0.0.9
REVISION =	0

HOMEPAGE =		https://iamb.chat

CATEGORIES =		net

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		devel/cargo

.include "crates.inc"

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes
WANTLIB =		${MODCARGO_WANTLIB} m
MODCARGO_CRATES_KEEP +=  libsqlite3-sys
BUILD_DEPENDS =		security/rust-ring \
			textproc/oniguruma
RUN_DEPENDS +=	x11/gtk+4,-guic \
		devel/desktop-file-utils

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/ \
		${PREFIX}/share/examples/iamb \
		${PREFIX}/share/icons/hicolor/256x256/apps/ \
		${PREFIX}/share/icons/hicolor/512x512/apps/ \
		${PREFIX}/share/icons/hicolor/scalable/apps/
	${INSTALL_MAN} ${WRKSRC}/docs/iamb.1 ${PREFIX}/man/man1/
	${INSTALL_MAN} ${WRKSRC}/docs/iamb.5 ${PREFIX}/man/man5/
	${INSTALL_DATA} ${WRKSRC}/docs/iamb.svg ${PREFIX}/share/icons/hicolor/scalable/apps/
	${INSTALL_DATA} ${WRKSRC}/docs/iamb-256x256.png ${PREFIX}/share/icons/hicolor/256x256/apps/iamb.png
	${INSTALL_DATA} ${WRKSRC}/docs/iamb-512x512.png ${PREFIX}/share/icons/hicolor/512x512/apps/iamb.png
	${INSTALL_DATA} ${WRKSRC}/config.example.toml ${PREFIX}/share/examples/iamb/config.example.toml
	${INSTALL_DATA} ${WRKSRC}/iamb.desktop ${PREFIX}/share/applications/

.include <bsd.port.mk>
