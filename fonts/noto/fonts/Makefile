COMMENT =		pan-unicode font family

NOTO_PROJECT =		fonts

V =			2017-10-24
GH_TAGNAME =		v$V-phase3-second-cleanup
REVISION =		0

RUN_DEPENDS =		fonts/noto/emoji

do-install:
	${INSTALL_DATA_DIR} ${NOTO_INSTALLDIR}
	${INSTALL_DATA} ${WRKDIST}/hinted/*.ttf ${NOTO_INSTALLDIR}

.include <bsd.port.mk>
