# $OpenBSD: Makefile,v 1.20 2015/07/15 19:49:41 ajacoutot Exp $

COMMENT =	management tool for Ubiquiti wireless devices

DISTNAME =	aircontrol-1.4.2-beta
PKGNAME =	${DISTNAME:S/-beta/beta/}
REVISION =	0

CATEGORIES =	net

HOMEPAGE  =	http://www.ubnt.com/aircontrol

PERMIT_PACKAGE_CDROM =	 proprietary license
PERMIT_PACKAGE_FTP =	 proprietary license
PERMIT_DISTFILES_FTP =	 proprietary license

MASTER_SITES =	http://www.ubnt.com/downloads/aircontrol/

MODULES =	 java
MODJAVA_VER =	 1.7
MODJAVA_JRERUN = Yes

RUN_DEPENDS =	java/javaPathHelper

PREFIX =	${VARBASE}/aircontrol

NO_BUILD =	Yes
NO_TEST =	Yes

WRKDIST =	${WRKDIR}/aircontrol

pre-patch:
	cd ${WRKDIST}; \
		perl -i -pe 's/\r$$//' README LICENSE \
		conf/catalina.properties

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}
	${INSTALL_DATA_DIR} ${PREFIX}/work
	cd ${WRKDIST}; pax -rw * ${PREFIX}
	cd ${PREFIX}; \
	    chown -R ${SHAREOWN}:${SHAREGRP} .; \
	    chmod -R g+rwX work logs temp conf data; \
	    chmod -R +x bin/*sh; \
	    rm bin/*bat
	mv ${PREFIX}/data ${PREFIX}/data.dist
	mv ${PREFIX}/conf ${PREFIX}/conf.dist

.include <bsd.port.mk>
