# $OpenBSD: Makefile,v 1.5 1999/12/08 03:49:51 brad Exp $

DISTNAME=	dopewars-1.4.6
CATEGORIES=	games
MASTER_SITES=	http://bellatrix.pcl.ox.ac.uk/~ben/dopewars/

post-install:
	@PKG_PREFIX="${PREFIX}" sh ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
