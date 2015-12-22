# $OpenBSD: Makefile,v 1.1.1.1 2015/12/22 10:02:45 bentley Exp $

COMMENT =		emoji fonts for the noto font family

NOTO_PROJECT =		emoji

GH_TAGNAME =		v$V-license-apache

do-install:
	${INSTALL_DATA_DIR} ${NOTO_INSTALLDIR}
	${INSTALL_DATA} ${WRKDIST}/NotoEmoji-Regular.ttf ${NOTO_INSTALLDIR}

.include <bsd.port.mk>
