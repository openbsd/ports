COMMENT =	web and CGI vulnerability scanner with SSL support

GH_ACCOUNT =	sullo
GH_PROJECT =	nikto
GH_TAGNAME =	2.5.0

EPOCH = 	0
CATEGORIES =	security www

HOMEPAGE =	https://www.cirt.net/nikto2

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	security/p5-Net-SSLeay

NO_BUILD =	Yes
NO_TEST =	Yes
PKG_ARCH =	*

pre-configure:
	sed -i 's%# EXECDIR=.*%EXECDIR=${PREFIX}/share/nikto%; \
		s%# DOCDIR=.*%DOCDIR=${PREFIX}/share/doc/nikto%; \
		s%# DBDIR=.*%DBDIR=/var/db/nikto/databases%; \
		s%NIKTODTD=.*%NIKTODTD=${PREFIX}/share/doc/nikto/nikto.dtd%' \
		${WRKSRC}/program/nikto.conf.default

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/nikto/databases
	${INSTALL_DATA_DIR} ${PREFIX}/share/nikto/plugins
	${INSTALL_DATA_DIR} ${PREFIX}/share/nikto/templates
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nikto
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nikto

	${INSTALL_SCRIPT} ${WRKSRC}/program/nikto.pl ${PREFIX}/bin/nikto
	${INSTALL_SCRIPT} ${WRKSRC}/program/replay.pl ${PREFIX}/bin/replay
	${INSTALL_DATA} ${WRKSRC}/program/nikto.conf.default \
		${PREFIX}/share/examples/nikto/nikto.conf

	${INSTALL_DATA} ${WRKSRC}/program/databases/!(*.orig) \
			${PREFIX}/share/nikto/databases
	${INSTALL_DATA} ${WRKSRC}/program/plugins/!(*.orig) \
			${PREFIX}/share/nikto/plugins
	${INSTALL_DATA} ${WRKSRC}/program/templates/!(*.orig) \
			${PREFIX}/share/nikto/templates

	${INSTALL_DATA} ${WRKSRC}/program/docs/nikto_schema.sql \
			${PREFIX}/share/doc/nikto
	${INSTALL_DATA} ${WRKSRC}/program/docs/nikto.dtd \
			${PREFIX}/share/doc/nikto
	${INSTALL_MAN} ${WRKSRC}/program/docs/nikto.1 \
			${PREFIX}/man/man1/nikto.1

.include <bsd.port.mk>
