COMMENT=	connect four of stones in a straight line

V=		2.1.4
DISTNAME=	4stAttack-${V}
PKGNAME=	forcedattack-${V}
REVISION =	9
CATEGORIES=	games

HOMEPAGE=	https://forcedattack.sourceforge.net/

# GPL 
PERMIT_PACKAGE=	Yes

SITES=		${SITE_SOURCEFORGE:=forcedattack/}

MODULES=	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

RUN_DEPENDS+=	devel/pygame

NO_TEST=	Yes

GAMEDIR=	${PREFIX}/share/forcedattack

do-build:
	@perl -pi -e "s,%%LOCALBASE%%,${LOCALBASE},g;" \
		-e "s,%%PYTHON%%,${LOCALBASE}/bin/python${MODPY_VERSION},g;" \
			${WRKSRC}/4stattack
	@perl -pi -e 's,python,python${MODPY_VERSION},g' ${WRKSRC}/4stattack.py

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/4stattack ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${GAMEDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/*.py ${GAMEDIR}
	${INSTALL_DATA} ${WRKSRC}/*.{ini,ttf} ${GAMEDIR}
	cd ${WRKSRC}; tar cf - data gui kde players | tar xf - -C ${GAMEDIR}
	${MODPY_COMPILEALL} ${GAMEDIR}

.include <bsd.port.mk>
