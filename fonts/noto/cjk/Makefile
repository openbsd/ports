COMMENT =		east asian fonts for the noto font family

NOTO_PROJECT =		cjk

V =			20230817

SITES.a =		https://github.com/googlefonts/noto-cjk/releases/download/Sans2.004/
SITES.b =		https://github.com/googlefonts/noto-cjk/releases/download/Serif2.002/
DISTFILES.a =		01_NotoSansCJK-OTF-VF.zip
DISTFILES.b = 		02_NotoSerifCJK-OTF-VF.zip
DIST_SUBDIR =		noto-cjk-$V
WRKDIST =		${WRKDIR}

do-install:
	${INSTALL_DATA_DIR} ${NOTO_INSTALLDIR}
	${INSTALL_DATA} ${WRKDIST}/Variable/OTC/*.ttc ${NOTO_INSTALLDIR}

.include <bsd.port.mk>
