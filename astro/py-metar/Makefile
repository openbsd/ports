# $OpenBSD: Makefile,v 1.10 2007/12/18 20:54:33 ajacoutot Exp $

COMMENT=	Python module to access the NOAA's METAR weather reports

V=		0.13
DISTNAME=	pymetar-${V}
PKGNAME=	py-metar-${V}
CATEGORIES=	astro

HOMEPAGE=	http://www.schwarzvogel.de/software-pymetar.shtml

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.schwarzvogel.de/pkgs/

SUBST_VARS=	V
MODULES=	lang/python

NO_REGRESS=	Yes

pre-build:
	cp ${WRKSRC}/bin/weather.py ${WRKSRC}/bin/pymet
	@perl -pi -e 's,bin/weather.py,bin/pymet,g' ${WRKSRC}/setup.py

.include <bsd.port.mk>
