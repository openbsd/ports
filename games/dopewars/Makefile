# $OpenBSD: Makefile,v 1.4 1999/10/26 21:21:17 brad Exp $

DISTNAME=	dopewars-1.4.5
CATEGORIES=	games
MASTER_SITES=	http://bellatrix.pcl.ox.ac.uk/~ben/dopewars/

post-install:
	@PKG_PREFIX="${PREFIX}" ${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
