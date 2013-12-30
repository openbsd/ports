# $OpenBSD: Makefile,v 1.3 2013/12/30 07:37:55 jasper Exp $

COMMENT=		web interface to PuppetDB

# git clone of eadcf8708ccdb6cfa7981f91bee425169d23234b
DISTNAME=		puppetboard-0.0.1
REVISION=		0
CATEGORIES=		www

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apache2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://distfiles.nl/

MODULES=		lang/python

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

RUN_DEPENDS=		databases/py-puppetdb \
			www/py-flask-wtf \
			www/py-gunicorn \
			www/py-requests

PREFIX=			${VARBASE}/www
INSTDIR=		${PREFIX}/puppetboard
SUBST_VARS+=		INSTDIR

# Don't bother installing some screenshots of what we're about to run
post-extract:
	rm -r ${WRKSRC}/screenshots/

do-install:
	cp -Rp ${WRKSRC} ${INSTDIR}
	mv ${INSTDIR}/puppetboard/default_settings.py \
		${INSTDIR}/puppetboard/default_settings.py.dist
	${INSTALL_DATA_DIR} ${INSTDIR}/puppetboard/{public,tmp}/
	mv ${INSTDIR}/wsgi.py ${INSTDIR}/puppetboard_wsgi.py
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
