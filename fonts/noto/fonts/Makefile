# $OpenBSD: Makefile,v 1.5 2019/04/24 16:26:55 sthen Exp $

COMMENT =		pan-unicode font family

NOTO_PROJECT =		fonts

REVISION =		3

RUN_DEPENDS =		fonts/noto/emoji

GH_TAGNAME =		v$V-license-adobe

do-install:
	${INSTALL_DATA_DIR} ${NOTO_INSTALLDIR}
	${INSTALL_DATA} ${WRKDIST}/hinted/*.ttf ${NOTO_INSTALLDIR}

.include <bsd.port.mk>
