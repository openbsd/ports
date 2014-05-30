# $OpenBSD: Makefile,v 1.10 2014/05/30 13:20:13 sthen Exp $

COMMENT =	CalDAV/CardDav calendar/contacts server

DISTNAME =	davical-1.1.1
REVISION =	4
CATEGORIES =	productivity net

HOMEPAGE =	http://www.davical.org/

MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://debian.mcmillan.net.nz/packages/davical/

MODULES =	lang/php
PREFIX =	${VARBASE}/www
INSTDIR =	${PREFIX}/davical
TINSTDIR =	${TRUEPREFIX}/davical

SUBST_VARS =	TINSTDIR

RUN_DEPENDS +=	lang/php/${MODPHP_VERSION},-curl \
		lang/php/${MODPHP_VERSION},-pdo_pgsql \
		www/awl>=0.53 \
		devel/p5-YAML \
		databases/p5-DBD-Pg

NO_BUILD =	Yes
NO_TEST =	Yes
PKG_ARCH =	*

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cp -Rp ${WRKSRC}/{README,INSTALL,dba,inc,config,htdocs,po,scripts} ${INSTDIR}
	${SUBST_CMD} -c ${FILESDIR}/davical.conf ${INSTDIR}/davical.conf
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
