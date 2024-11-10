COMMENT =		pan-unicode font family

NOTO_PROJECT =		fonts

V =			24.9.1
GH_ACCOUNT =		notofonts
GH_PROJECT =		notofonts.github.io
GH_TAGNAME =		noto-monthly-release-$V
EPOCH =			0

RUN_DEPENDS =		fonts/noto/emoji

do-install:
	${INSTALL_DATA_DIR} ${NOTO_INSTALLDIR}
	${INSTALL_DATA} ${WRKDIST}/fonts/*/hinted/ttf/*.ttf ${NOTO_INSTALLDIR}

.include <bsd.port.mk>
