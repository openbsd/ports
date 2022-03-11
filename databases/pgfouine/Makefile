COMMENT =	PostgreSQL log analyzer

V =		1.2
DISTNAME =	pgfouine-$V
CATEGORIES =	databases
REVISION =	11

MAINTAINER =	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

# XXX likely to be broken with php>=5; version in PORTROACH site may work
PORTROACH =	site:https://github.com/milo/pgFouine/archive/
MASTER_SITES =	https://ftp.postgresql.org/pub/projects/pgFoundry/pgfouine/pgFouine/pgFouine$V/
NO_BUILD =	Yes
NO_TEST =	Yes
PKG_ARCH =	*

MODULES =	lang/php
RUN_DEPENDS =	lang/php/${MODPHP_VERSION},-gd

pre-configure:
	@sed -i -e 's,/usr/bin/php,${MODPHP_BIN},g;' \
		-e 's,!!PREFIX!!,${PREFIX},g' \
		 ${WRKSRC}/pgfouine.php ${WRKSRC}/pgfouine_vacuum.php
	@find ${WRKSRC} -type d -name CVS -prune -exec rm -fr {} +

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/pgfouine.php ${PREFIX}/bin/pgfouine
	${INSTALL_SCRIPT} ${WRKSRC}/pgfouine_vacuum.php ${PREFIX}/bin/pgfouine_vacuum
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pgfouine
	${INSTALL_DATA_DIR} ${PREFIX}/share/pgfouine/include
	${INSTALL_DATA} ${WRKSRC}/version.php ${PREFIX}/share/pgfouine/
	@cd ${WRKSRC}/include && \
		find . -type d -exec ${INSTALL_DATA_DIR} ${PREFIX}/share/pgfouine/include/{} \;
	@cd ${WRKSRC}/include && \
		find . ! -type d -exec ${INSTALL_DATA} {} ${PREFIX}/share/pgfouine/include/{} \;
	${INSTALL_DATA} ${WRKSRC}/AUTHORS ${PREFIX}/share/doc/pgfouine/
	${INSTALL_DATA} ${WRKSRC}/ChangeLog ${PREFIX}/share/doc/pgfouine/
	${INSTALL_DATA} ${WRKSRC}/THANKS ${PREFIX}/share/doc/pgfouine/
	${INSTALL_DATA} ${WRKSRC}/rpm-specific/sources/pgfouine-tutorial.txt \
		${PREFIX}/share/doc/pgfouine/pgfouine-tutorial.txt

.include <bsd.port.mk>
