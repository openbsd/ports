COMMENT =		pan-unicode font family

NOTO_PROJECT =		fonts

V =			20201206
GH_TAGNAME =		v$V-phase3

RUN_DEPENDS =		fonts/noto/emoji

do-install:
	${INSTALL_DATA_DIR} ${NOTO_INSTALLDIR}
	${INSTALL_DATA} ${WRKDIST}/hinted/ttf/*/*.ttf ${NOTO_INSTALLDIR}

.include <bsd.port.mk>
