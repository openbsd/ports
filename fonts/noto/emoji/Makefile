# $OpenBSD: Makefile,v 1.3 2019/04/24 16:26:55 sthen Exp $

COMMENT =		emoji fonts for the noto font family

NOTO_PROJECT =		emoji

REVISION =		1

GH_TAGNAME =		v$V-license-apache

do-install:
	${INSTALL_DATA_DIR} ${NOTO_INSTALLDIR}
	${INSTALL_DATA} ${WRKDIST}/NotoEmoji-Regular.ttf ${NOTO_INSTALLDIR}

.include <bsd.port.mk>
