# $OpenBSD: Makefile,v 1.2 2016/01/11 11:04:21 czarkoff Exp $

COMMENT =		pan-unicode font family

NOTO_PROJECT =		fonts

REVISION =		0

RUN_DEPENDS =		fonts/noto/cjk \
			fonts/noto/emoji

GH_TAGNAME =		v$V-license-adobe

do-install:
	${INSTALL_DATA_DIR} ${NOTO_INSTALLDIR}
	${INSTALL_DATA} ${WRKDIST}/hinted/*.ttf ${NOTO_INSTALLDIR}

.include <bsd.port.mk>
