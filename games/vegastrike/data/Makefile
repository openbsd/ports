# $OpenBSD: Makefile,v 1.6 2020/03/20 16:44:23 naddy Exp $

COMMENT =	data files for vegastrike

DISTNAME =	vegastrike-data-${V}
REVISION = 	2

NO_BUILD =	Yes
NO_TEST =	Yes

EXTRACT_ONLY =

MODULES = 	lang/python
BUILD_DEPENDS =	archivers/bzip2
RUN_DEPENDS =	devel/desktop-file-utils

MODPY_BUILDDEP =No
MODPY_RUNDEP =	No

do-install:
	tar -xjf ${FULLDISTDIR}/${DISTFILES} -C ${PREFIX}/share \
		-s ",${DISTNAME},vegastrike,"
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons
	mv ${PREFIX}/share/vegastrike/vegastrike.desktop \
		${PREFIX}/share/applications
	cp ${PREFIX}/share/vegastrike/vegastrike.xpm \
		${PREFIX}/share/icons

post-install:
	find ${PREFIX}/share/vegastrike/modules/builtin/ \
		-name *.py -exec ${MODPY_BIN_ADJ} {} +
	${MODPY_BIN_ADJ} \
		${PREFIX}/share/vegastrike/cgi-accountserver/accountserver.py

.include <bsd.port.mk>
