# $OpenBSD: Makefile,v 1.2 2004/04/01 13:17:57 xsa Exp $

COMMENT=	"Python module to access the NOAA's METAR weather reports"

DISTNAME=	pymetar-0.8
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

MODULES=	python

NO_REGRESS=	Yes

pre-build:
	cp ${WRKSRC}/bin/pymet2.py ${WRKSRC}/bin/pymet2
	@perl -pi -e 's,bin/pymet2.py,bin/pymet2,g' ${WRKSRC}/setup.py

.include <bsd.port.mk>
