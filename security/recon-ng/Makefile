# $OpenBSD: Makefile,v 1.10 2022/02/12 20:47:28 sebastia Exp $

COMMENT =		web reconnaissance framework

GH_ACCOUNT =		lanmaster53
GH_PROJECT =		recon-ng
GH_TAGNAME =		v5.1.2

HOMEPAGE =		https://github.com/lanmaster53/recon-ng

MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

CATEGORIES =		security

# GPLv3
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		devel/py-olefile${MODPY_FLAVOR} \
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

SUBST_VARS +=		GH_TAGNAME

MODPY_ADJ_FILES =	recon-cli recon-ng recon-web

pre-install:
	${SUBST_CMD} ${WRKSRC}/recon/core/base.py
	rm ${WRKSRC}/recon/core/*.{beforesubst,orig}

do-install:
.for s in cli ng web
	${INSTALL_SCRIPT} ${WRKSRC}/recon-$s ${PREFIX}/bin
.endfor
	${INSTALL_DATA_DIR} ${WRKINST}/${MODPY_SITEPKG}/recon/
	cd ${WRKSRC}/recon && umask 022 && pax -rw . ${WRKINST}/${MODPY_SITEPKG}/recon

.include <bsd.port.mk>

