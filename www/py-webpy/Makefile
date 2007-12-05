# $OpenBSD: Makefile,v 1.1.1.1 2007/12/05 15:44:49 eric Exp $

COMMENT=	web framework for python

DISTNAME=	web.py-0.22
PKGNAME=	${DISTNAME:S/web.py/py-webpy/}
CATEGORIES=	www

MAINTAINER=	Benoit Chesneau <benoitc@metavers.net>

MASTER_SITES=	http://webpy.org/static/
HOMEPAGE=	http://webpy.org

# Public Domain, except wsgiserver
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MODULES=	lang/python

NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}/webpy

post-install:
	${INSTALL} ${WRKDIST}/web/wsgiserver/LICENSE.txt \
		${WRKINST}${MODPY_SITEPKG}/web/wsgiserver/LICENSE.txt

.include <bsd.port.mk>
