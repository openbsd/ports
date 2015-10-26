# $OpenBSD: Makefile,v 1.12 2015/10/26 18:08:01 jasper Exp $

COMMENT=		web interface to PuppetDB

MODPY_EGG_VERSION=	0.0.5
DISTNAME=		puppetboard-${MODPY_EGG_VERSION}
CATEGORIES=		www

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apache2
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =		Yes

MODULES=		lang/python

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

RUN_DEPENDS=		databases/py-puppetdb>=0.1.0,<0.2.0 \
			www/py-flask-wtf>=0.9.4p0 \
			www/py-gunicorn \
			www/py-requests

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
