# $OpenBSD: Makefile,v 1.3 2004/07/30 08:49:47 xsa Exp $

COMMENT=	"Python module to access the NOAA's METAR weather reports"

DISTNAME=	pymetar-0.9
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
