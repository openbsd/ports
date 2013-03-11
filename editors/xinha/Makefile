# $OpenBSD: Makefile,v 1.5 2013/03/11 11:02:50 espie Exp $

COMMENT=	online HTML editor

V=		0.931
DISTNAME=	Xinha_$V
PKGNAME=	xinha-${V}
REVISION=	1
CATEGORIES=	editors www

HOMEPAGE=	http://xinha.webfactional.com/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://releases.xinha.gogo.co.nz/

EXTRACT_ONLY=
NO_BUILD=	Yes
NO_TEST=	Yes

PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/xinha

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	tar zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX} -C ${INSTDIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}
	
.include <bsd.port.mk>
