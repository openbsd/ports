COMMENT =		east asian fonts for the noto font family

NOTO_PROJECT =		cjk

V =			2.001
GH_TAGNAME =		NotoSansV$V

HOMEPAGE =		https://www.google.com/get/noto/help/cjk/

BUILD_DEPENDS =		archivers/unzip

do-install:
	${INSTALL_DATA_DIR} ${NOTO_INSTALLDIR}
	${INSTALL_DATA} ${WRKDIST}/NotoSerifCJK-*.ttc ${NOTO_INSTALLDIR}
	cd ${NOTO_INSTALLDIR} && unzip ${WRKDIST}/NotoSansCJK.ttc.zip
	rm -rf ${NOTO_INSTALLDIR}/__MACOSX

.include <bsd.port.mk>
