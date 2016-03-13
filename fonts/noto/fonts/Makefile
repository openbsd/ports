# $OpenBSD: Makefile,v 1.4 2016/03/13 13:18:39 sthen Exp $

COMMENT =		pan-unicode font family

NOTO_PROJECT =		fonts

REVISION =		2

RUN_DEPENDS =		fonts/noto/emoji

GH_TAGNAME =		v$V-license-adobe

do-install:
	${INSTALL_DATA_DIR} ${NOTO_INSTALLDIR}
	${INSTALL_DATA} ${WRKDIST}/hinted/*.ttf ${NOTO_INSTALLDIR}

.include <bsd.port.mk>
