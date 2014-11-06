# $OpenBSD: Makefile,v 1.12 2014/11/06 17:13:40 sthen Exp $

COMMENT =	CalDAV/CardDav calendar/contacts server

DISTNAME =	davical-1.1.1
REVISION =	6
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

post-patch:
	# fix sql files to remove quotes from LANGUAGE statements, breaks with pgsql 9.3.
	cd ${WRKSRC} && grep -rl LANGUAGE dba | xargs perl -pi -e "s/LANGUAGE '(\w+)'/LANGUAGE \1/"

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cp -Rp ${WRKSRC}/{README,INSTALL,dba,inc,config,htdocs,po,scripts} ${INSTDIR}
	${SUBST_CMD} -c ${FILESDIR}/davical.conf ${INSTDIR}/davical.conf
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
