# $OpenBSD: Makefile,v 1.4 2019/05/10 04:14:13 bentley Exp $

COMMENT =		emoji fonts for the noto font family

NOTO_PROJECT =		emoji

V =			2018-08-10
GH_TAGNAME =		v$V-unicode11

do-install:
	${INSTALL_DATA_DIR} ${NOTO_INSTALLDIR}
	${INSTALL_DATA} ${WRKDIST}/fonts/*.ttf ${NOTO_INSTALLDIR}

.include <bsd.port.mk>
