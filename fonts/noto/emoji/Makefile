COMMENT =		emoji fonts for the noto font family

NOTO_PROJECT =		emoji

# use date as version number for consistency with other noto fonts
V =			2024-10-02
GH_TAGNAME =		v2.047

pre-install:
	rm ${WRKDIST}/fonts/NotoColorEmoji_WindowsCompatible.ttf

do-install:
	${INSTALL_DATA_DIR} ${NOTO_INSTALLDIR}
	${INSTALL_DATA} ${WRKDIST}/fonts/NotoColorEmoji.ttf ${NOTO_INSTALLDIR}

.include <bsd.port.mk>
