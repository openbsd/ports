COMMENT =	KDE Breeze grub theme
DISTNAME =	breeze-grub-${VERSION}

CONFIGURE_STYLE =	none
NO_BUILD =		Yes
NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/grub/themes
	${INSTALL_DATA} ${WRKSRC}/breeze/*.png \
		${PREFIX}/share/grub/themes/
	${INSTALL_DATA} ${WRKSRC}/breeze/theme.txt \
		${PREFIX}/share/grub/themes/
	${INSTALL_DATA} ${WRKSRC}/breeze/*.pf2 \
		${PREFIX}/share/grub/themes/

.include <bsd.port.mk>
