# $OpenBSD: Makefile,v 1.5 2004/08/03 09:35:25 espie Exp $

COMMENT=	"Python module to access the NOAA's METAR weather reports"

DISTNAME=	pymetar-0.10
PKGNAME=	${DISTNAME:S/py/py-/}
CATEGORIES=	astro

HOMEPAGE=	http://www.schwarzvogel.de/software-pymetar.shtml

MAINTAINER=	Xavier Santolaria <xsa@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.schwarzvogel.de/pkgs/

MODULES=	lang/python

NO_REGRESS=	Yes

pre-build:
	cp ${WRKSRC}/bin/weather.py ${WRKSRC}/bin/pymet
	@perl -pi -e 's,bin/weather.py,bin/pymet,g' ${WRKSRC}/setup.py

.include <bsd.port.mk>
