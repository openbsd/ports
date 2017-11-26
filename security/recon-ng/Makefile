# $OpenBSD: Makefile,v 1.1.1.1 2017/11/26 10:20:55 jasper Exp $

COMMENT =		web reconnaissance framework

VERSION =		4.9.2
DISTNAME =		recon-ng-${VERSION}

HOMEPAGE =		https://bitbucket.org/LaNMaSteR53/recon-ng

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

CATEGORIES =		security

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://bitbucket.org/LaNMaSteR53/recon-ng/get/
DISTFILES =		${DISTNAME}{v${VERSION}}${EXTRACT_SUFX}
WRKDIST =		${WRKDIR}/LaNMaSteR53-recon-ng-70d967e3f530

RUN_DEPENDS =		devel/py-jsonrpclib${MODPY_FLAVOR} \
			devel/py-olefile${MODPY_FLAVOR} \
			devel/py-xlsxwriter${MODPY_FLAVOR} \
			net/py-dnspython${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR} \
			www/py-mechanize${MODPY_FLAVOR}

# Could make use of:
# PyPDF2
# dicttoxml
# slowaes
# unicodecsv
# flask (ported, but recon-web needs dicttoxml too)

MODULES =		lang/python

NO_BUILD =		Yes
NO_TEST =		Yes

SUBST_VARS +=		VERSION

# recon-web needs unported modules
MODPY_ADJ_FILES =	recon-cli recon-ng recon-rpc # recon-web

pre-install:
	${SUBST_CMD} ${WRKSRC}/recon/core/base.py
	rm ${WRKSRC}/recon/core/*.{beforesubst,orig}

do-install:
.for s in cli ng rpc #web
	${INSTALL_SCRIPT} ${WRKSRC}/recon-$s ${PREFIX}/bin
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/recon-ng/data/
	${INSTALL_DATA} ${WRKSRC}/data/* ${PREFIX}/share/recon-ng/data/
	${INSTALL_DATA_DIR} ${PREFIX}/share/recon-ng/modules/
	cd ${WRKSRC}/modules && umask 022 && pax -rw . ${PREFIX}/share/recon-ng/modules/
	${INSTALL_DATA_DIR} ${WRKINST}/${MODPY_SITEPKG}/recon/
	cd ${WRKSRC}/recon && umask 022 && pax -rw . ${WRKINST}/${MODPY_SITEPKG}/recon

.include <bsd.port.mk>

