# $OpenBSD: Makefile,v 1.5 2020/06/09 09:35:59 bentley Exp $

COMMENT =		emoji fonts for the noto font family

NOTO_PROJECT =		emoji

V =			2020-04-08
GH_TAGNAME =		v$V-unicode12_1

do-install:
	${INSTALL_DATA_DIR} ${NOTO_INSTALLDIR}
	${INSTALL_DATA} ${WRKDIST}/fonts/*.ttf ${NOTO_INSTALLDIR}

.include <bsd.port.mk>
