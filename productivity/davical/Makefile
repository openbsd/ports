# $OpenBSD: Makefile,v 1.2 2012/03/07 08:38:44 ajacoutot Exp $

COMMENT =	CalDAV/CardDav calendar/contacts server

DISTNAME =	davical-1.0.2
CATEGORIES =	productivity net
REVISION =	0

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

RUN_DEPENDS +=	lang/php/${MODPHP_VERSION},-pdo_pgsql \
		www/awl \
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
