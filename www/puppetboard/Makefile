COMMENT=		web interface to PuppetDB

MODPY_DISTV=	5.4.0
DISTNAME=		puppetboard-${MODPY_DISTV}
CATEGORIES=		www
REVISION=		1

MAINTAINER=		Sebastian Reitenbach <sebastia@openbsd.org>

# Apache2
PERMIT_PACKAGE=	Yes

MODULES=		lang/python
MODPY_PI =		Yes

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

RUN_DEPENDS=		databases/py-puppetdb>=3.2 \
			devel/py-setuptools \
			sysutils/py-packaging \
			textproc/py-commonmark \
			www/py-flask-apscheduler \
			www/py-flask-wtf \
			www/py-flask-caching \
			www/py-gunicorn \
			www/py-requests

PREFIX=			${LOCALSTATEDIR}/www
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
