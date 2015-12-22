# $OpenBSD: Makefile,v 1.1.1.1 2015/12/22 10:02:45 bentley Exp $

COMMENT =		pan-unicode font family

NOTO_PROJECT =		fonts

RUN_DEPENDS =		fonts/noto/cjk \
			fonts/noto/emoji

GH_TAGNAME =		v$V-license-adobe

do-install:
	${INSTALL_DATA_DIR} ${NOTO_INSTALLDIR}
	${INSTALL_DATA} ${WRKDIST}/hinted/*.ttf ${NOTO_INSTALLDIR}

.include <bsd.port.mk>
