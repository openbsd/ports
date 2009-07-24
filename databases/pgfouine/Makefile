# $OpenBSD: Makefile,v 1.3 2009/07/24 11:47:01 pea Exp $

COMMENT =	PostgreSQL log analyzer

DISTNAME =	pgfouine-1.1
CATEGORIES =	databases

HOMEPAGE =	http://pgfouine.projects.postgresql.org/

MAINTAINER =	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE_FTP =	Yes
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes

MASTER_SITES =	http://pgfoundry.org/frs/download.php/2178/ \
		http://pgfouine.projects.postgresql.org/releases/

NO_BUILD =	Yes
NO_REGRESS =	Yes
PKG_ARCH =	*

RUN_DEPENDS =	:php5-core-*:www/php5/core \
		:php5-gd-*:www/php5/extensions,-gd

pre-configure:
	@perl -pi -e 's,/usr/bin/php,${LOCALBASE}/bin/php,g;' \
		-e 's,!!PREFIX!!,${PREFIX},g' \
		 ${WRKSRC}/pgfouine.php ${WRKSRC}/pgfouine_vacuum.php

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
