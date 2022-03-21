COMMENT =		emoji fonts for the noto font family

NOTO_PROJECT =		emoji

# use date as version number for consistency with other noto fonts
V =			2021-11-01
GH_TAGNAME =		v2.034

pre-install:
	rm ${WRKDIST}/fonts/NotoColorEmoji_WindowsCompatible.ttf

do-install:
	${INSTALL_DATA_DIR} ${NOTO_INSTALLDIR}
	${INSTALL_DATA} ${WRKDIST}/fonts/*.ttf ${NOTO_INSTALLDIR}

.include <bsd.port.mk>
