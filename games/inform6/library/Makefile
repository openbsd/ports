# $OpenBSD: Makefile,v 1.1.1.1 2021/01/03 16:42:30 bcallah Exp $

V =		6.12.4
COMMENT =	standard library for Inform 6 interactive fiction
DISTNAME =	inform6lib-${V}

MASTER_SITES =	https://gitlab.com/DavidGriffith/inform6lib/-/archive/${V}/

PKG_ARCH =	*

NO_BUILD =	Yes

# Upstream says you need the symlinks
do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/inform
	${INSTALL_DATA} ${WRKSRC}/ARTISTIC ${PREFIX}/share/inform
	${INSTALL_DATA} ${WRKSRC}/*.h ${PREFIX}/share/inform
.for i in English.h Grammar.h Parser.h Verblib.h VerbLib.h
	ln -s ${i:L} ${PREFIX}/share/inform/$i
.endfor

.include <bsd.port.mk>
