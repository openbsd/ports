COMMENT =		east asian fonts for the noto font family

NOTO_PROJECT =		cjk

V =			20220127

MASTER_SITES0 =		https://github.com/googlefonts/noto-cjk/releases/download/Sans2.004/
MASTER_SITES1 =		https://github.com/googlefonts/noto-cjk/releases/download/Serif2.001/
DISTFILES =		01_NotoSansCJK-OTF-VF.zip:0 \
			02_NotoSerifCJK-OTF-VF.zip:1
DIST_SUBDIR =		noto-cjk-$V
WRKDIST =		${WRKDIR}

do-install:
	${INSTALL_DATA_DIR} ${NOTO_INSTALLDIR}
	${INSTALL_DATA} ${WRKDIST}/Variable/OTC/*.ttc ${NOTO_INSTALLDIR}

.include <bsd.port.mk>
