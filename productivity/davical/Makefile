# $OpenBSD: Makefile,v 1.4 2013/02/24 16:31:54 jasper Exp $

COMMENT =	CalDAV/CardDav calendar/contacts server

DISTNAME =	davical-1.1.1
REVISION =	0
CATEGORIES =	productivity net

HOMEPAGE =	http://www.davical.org/

MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://debian.mcmillan.net.nz/packages/davical/

MODULES =	lang/php
PREFIX =	/var/www
INSTDIR =	${PREFIX}/davical
TINSTDIR =	${TRUEPREFIX}/davical

SUBST_VARS =	TINSTDIR

RUN_DEPENDS +=	lang/php/${MODPHP_VERSION},-curl \
		lang/php/${MODPHP_VERSION},-pdo_pgsql \
		www/awl>=0.53 \
		devel/p5-YAML \
		databases/p5-DBD-Pg

NO_BUILD =	Yes
NO_REGRESS =	Yes
PKG_ARCH =	*

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cp -Rp ${WRKSRC}/{README,INSTALL,dba,inc,config,htdocs,po,scripts} ${INSTDIR}
	${SUBST_CMD} -c ${FILESDIR}/davical.conf ${INSTDIR}/davical.conf
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
