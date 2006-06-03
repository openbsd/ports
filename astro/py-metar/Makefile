# $OpenBSD: Makefile,v 1.7 2006/06/03 09:19:52 alek Exp $

COMMENT=	"Python module to access the NOAA's METAR weather reports"

DISTNAME=	pymetar-0.12
PKGNAME=	${DISTNAME:S/py/py-/}p0
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
