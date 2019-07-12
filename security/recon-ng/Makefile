# $OpenBSD: Makefile,v 1.4 2019/07/12 20:49:35 sthen Exp $

COMMENT =		web reconnaissance framework

VERSION =		4.9.3
DISTNAME =		recon-ng-${VERSION}

HOMEPAGE =		https://bitbucket.org/LaNMaSteR53/recon-ng

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

CATEGORIES =		security

# GPLv3
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://bitbucket.org/LaNMaSteR53/recon-ng/get/
DISTFILES =		${DISTNAME}{v${VERSION}}${EXTRACT_SUFX}
WRKDIST =		${WRKDIR}/LaNMaSteR53-recon-ng-c83599e52159

RUN_DEPENDS =		devel/py-jsonrpclib${MODPY_FLAVOR} \
			devel/py-olefile${MODPY_FLAVOR} \
			devel/py-xlsxwriter${MODPY_FLAVOR} \
			net/py-dnspython${MODPY_FLAVOR} \
			textproc/py-dicttoxml${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR} \
			textproc/py-unicodecsv${MODPY_FLAVOR} \
			www/py-flask${MODPY_FLAVOR} \
			www/py-mechanize${MODPY_FLAVOR}

# Could make use of:
# PyPDF2
# slowaes

MODULES =		lang/python

NO_BUILD =		Yes
NO_TEST =		Yes

SUBST_VARS +=		VERSION

MODPY_ADJ_FILES =	recon-cli recon-ng recon-rpc recon-web

pre-install:
	${SUBST_CMD} ${WRKSRC}/recon/core/base.py
	rm ${WRKSRC}/recon/core/*.{beforesubst,orig}

do-install:
.for s in cli ng rpc web
	${INSTALL_SCRIPT} ${WRKSRC}/recon-$s ${PREFIX}/bin
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/recon-ng/data/
	${INSTALL_DATA} ${WRKSRC}/data/* ${PREFIX}/share/recon-ng/data/
	${INSTALL_DATA_DIR} ${PREFIX}/share/recon-ng/modules/
	cd ${WRKSRC}/modules && umask 022 && pax -rw . ${PREFIX}/share/recon-ng/modules/
	${INSTALL_DATA_DIR} ${WRKINST}/${MODPY_SITEPKG}/recon/
	cd ${WRKSRC}/recon && umask 022 && pax -rw . ${WRKINST}/${MODPY_SITEPKG}/recon

.include <bsd.port.mk>

