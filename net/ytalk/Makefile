# $OpenBSD: Makefile,v 1.4 1999/04/22 15:26:59 brad Exp $

DISTNAME=	ytalk-3.1
CATEGORIES=	net
MASTER_SITES=	http://www.eleves.ens.fr:8080/home/espel/ytalk/

NEED_VERSION=	1.79

MAINTAINER=	espie@cvs.openbsd.org

GNU_CONFIGURE=	yes

INSTALL_TARGET=	install.bin install.man

post-install:
	${MKDIR} ${PREFIX}/lib/ytalk
	${INSTALL_DATA} ${WRKBUILD}/ytalkrc ${PREFIX}/lib/ytalk/ytalkrc.sample
	@PKG_PREFIX="${PREFIX}" ${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
