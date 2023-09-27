BROKEN-sparc64 = PHP 8.1 not available on sparc64

COMMENT =	CalDAV/CardDav calendar/contacts server

DISTNAME =	davical_1.1.12.orig
PKGNAME =	davical-1.1.12
EXTRACT_SUFX =	.tar.xz
CATEGORIES =	productivity net

HOMEPAGE =	https://www.davical.org/
SITES =		https://www.davical.org/downloads/

MAINTAINER =	Landry Breuil <landry@openbsd.org>
# GPLv2+
PERMIT_PACKAGE =	Yes

WRKSRC =	${WRKDIR}
MODULES =	lang/php
PREFIX =	${VARBASE}/www
INSTDIR =	${PREFIX}/davical
TINSTDIR =	${TRUEPREFIX}/davical

SUBST_VARS =	TINSTDIR

RUN_DEPENDS +=	lang/php/${MODPHP_VERSION},-curl \
		lang/php/${MODPHP_VERSION},-pdo_pgsql \
		www/awl>=0.64 \
		devel/p5-YAML \
		databases/p5-DBD-Pg

NO_BUILD =	Yes
# some tests but makefile need patching
NO_TEST =	Yes
PKG_ARCH =	*

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cp -Rp ${WRKSRC}/{README,INSTALL,dba,inc,config,htdocs,po,scripts} ${INSTDIR}
	${SUBST_CMD} -m 0644 -c ${FILESDIR}/davical.conf ${INSTDIR}/davical.conf
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
