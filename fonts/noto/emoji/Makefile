# $OpenBSD: Makefile,v 1.2 2016/01/11 11:04:21 czarkoff Exp $

COMMENT =		emoji fonts for the noto font family

NOTO_PROJECT =		emoji

REVISION =		0

GH_TAGNAME =		v$V-license-apache

do-install:
	${INSTALL_DATA_DIR} ${NOTO_INSTALLDIR}
	${INSTALL_DATA} ${WRKDIST}/NotoEmoji-Regular.ttf ${NOTO_INSTALLDIR}

.include <bsd.port.mk>
