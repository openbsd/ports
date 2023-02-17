COMMENT=		web interface to PuppetDB

MODPY_EGG_VERSION=	4.2.6
DISTNAME=		puppetboard-${MODPY_EGG_VERSION}
CATEGORIES=		www

MAINTAINER=		Sebastian Reitenbach <sebastia@openbsd.org>

# Apache2
PERMIT_PACKAGE=	Yes

MODULES=		lang/python
MODPY_PI =		Yes

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

RUN_DEPENDS=		databases/py-puppetdb${MODPY_FLAVOR}>=2.5.2 \
			devel/py-setuptools${MODPY_FLAVOR} \
			sysutils/py-packaging${MODPY_FLAVOR} \
			textproc/py-commonmark${MODPY_FLAVOR} \
			www/py-flask-wtf${MODPY_FLAVOR} \
			www/py-gunicorn${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

PREFIX=			${VARBASE}/www
INSTDIR=		${PREFIX}/puppetboard
SUBST_VARS+=		INSTDIR

do-install:
	cp -Rp ${WRKSRC} ${INSTDIR}
	mv ${INSTDIR}/puppetboard/default_settings.py \
		${INSTDIR}/puppetboard/default_settings.py.dist
	${INSTALL_DATA_DIR} ${INSTDIR}/puppetboard/{public,tmp}/
	${INSTALL_DATA} ${FILESDIR}/puppetboard_wsgi.py ${INSTDIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
