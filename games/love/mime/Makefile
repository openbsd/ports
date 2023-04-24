VERSION =		11.4

COMMENT =		MIME definition for application/x-love-game
PKGNAME =		love-mime-0.1
REVISION =		0

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

RUN_DEPENDS =		misc/shared-mime-info \
			x11/gtk+4,-guic

MODULES =		# none
CONFIGURE_STYLE =	# none

ICON_MIME_DIR =		${PREFIX}/share/icons/hicolor/scalable/mimetypes/

do-install:
	${INSTALL_DATA_DIR} ${ICON_MIME_DIR}
	${INSTALL_DATA_DIR} ${PREFIX}/share/mime/packages/
	cd ${WRKSRC}/platform/unix/ && \
		${INSTALL_DATA} application-*.svg ${ICON_MIME_DIR} && \
		${INSTALL_DATA} love.xml ${PREFIX}/share/mime/packages/

.include <bsd.port.mk>
