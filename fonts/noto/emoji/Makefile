COMMENT =		emoji fonts for the noto font family

NOTO_PROJECT =		emoji
EPOCH =			0

V =			2.051
GH_TAGNAME =		v$V

pre-install:
	rm ${WRKDIST}/fonts/NotoColorEmoji_WindowsCompatible.ttf

do-install:
	${INSTALL_DATA_DIR} ${NOTO_INSTALLDIR}
	${INSTALL_DATA} ${WRKDIST}/fonts/NotoColorEmoji.ttf ${NOTO_INSTALLDIR}

.include <bsd.port.mk>
