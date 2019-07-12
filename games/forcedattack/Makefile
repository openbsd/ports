# $OpenBSD: Makefile,v 1.16 2019/07/12 20:46:17 sthen Exp $

COMMENT=	connect four of stones in a straight line

V=		2.1.4
DISTNAME=	4stAttack-${V}
PKGNAME=	forcedattack-${V}
REVISION =	7
CATEGORIES=	games

HOMEPAGE=	http://forcedattack.sourceforge.net/

# GPL 
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=forcedattack/}

MODULES=	lang/python

RUN_DEPENDS+=	devel/pygame

NO_TEST=	Yes

GAMEDIR=	${PREFIX}/share/forcedattack

do-build:
	@perl -pi -e "s,%%LOCALBASE%%,${LOCALBASE},g;" \
		-e "s,%%PYTHON%%,${LOCALBASE}/bin/python${MODPY_VERSION},g;" \
			${WRKSRC}/4stattack
	@perl -pi -e 's,python,python${MODPY_VERSION},g' ${WRKSRC}/4stattack.py

	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${WRKSRC}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/4stattack ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${GAMEDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/*.{py,pyc} ${GAMEDIR}
	${INSTALL_DATA} ${WRKSRC}/*.{ini,ttf} ${GAMEDIR}
	cd ${WRKSRC}; tar cf - data gui kde players | tar xf - -C ${GAMEDIR}

.include <bsd.port.mk>
