# $OpenBSD: Makefile,v 1.1.1.1 2007/09/21 11:16:18 sturm Exp $

COMMENT=	online HTML editor

V=		0.931
DISTNAME=	Xinha_$V
PKGNAME=	xinha-$V
CATEGORIES=	editors www

HOMEPAGE=	http://xinha.webfactional.com/

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://releases.xinha.gogo.co.nz/

EXTRACT_ONLY=
NO_BUILD=	Yes
NO_REGRESS=	Yes

PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/xinha

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	tar zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX} -C ${INSTDIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}
	
.include <bsd.port.mk>
