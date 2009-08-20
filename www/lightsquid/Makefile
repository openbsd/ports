# $OpenBSD: Makefile,v 1.2 2009/08/20 21:51:58 rui Exp $

COMMENT =		light and fast log analyzer for squid proxy

DISTNAME =		lightsquid-1.8

CATEGORIES =		www

HOMEPAGE =		http://lightsquid.sourceforge.net

MAINTAINER =		Kirill Bychkov <yason@linklevel.net>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

EXTRACT_SUFX =		.tgz
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=lightsquid/}

NO_BUILD =		Yes
RUN_DEPENDS = 		::graphics/p5-GD

PREFIX = 		/var/www
INSTDIR =		${PREFIX}/htdocs/lightsquid
SUBST_VARS = 		INSTDIR

do-configure:
	@perl -pi -e 's|/var/www/html/lightsquid|${INSTDIR}|g; \
	    s|/var/log/squid|/var/squid/logs|g' ${WRKDIST}/lightsquid.cfg

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	rm ${WRKDIST}/report/delete.me `find ${WRKSRC} -name '*.orig'`
	cd ${WRKDIST}; tar cf - . | tar xf - -C ${INSTDIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}
	chown -R ${BINOWN}:${BINGRP} ${INSTDIR}/*cgi ${INSTDIR}/*pl
	mv ${INSTDIR}/group.cfg.src ${INSTDIR}/doc/group.cfg
	mv ${INSTDIR}/*cfg ${INSTDIR}/doc
	
.include <bsd.port.mk>
