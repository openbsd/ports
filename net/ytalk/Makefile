# $OpenBSD: Makefile,v 1.7 2000/02/10 09:17:16 espie Exp $

DISTNAME=	ytalk-3.1.1
CATEGORIES=	net
MASTER_SITES=	http://www.iagora.com/~espel/ytalk/

NEED_VERSION=	1.79

MAINTAINER=	espie@cvs.openbsd.org

GNU_CONFIGURE=	yes

INSTALL_TARGET=	install.bin install.man

post-install:
	mkdir -p ${PREFIX}/lib/ytalk
	${INSTALL_DATA} ${WRKBUILD}/ytalkrc ${PREFIX}/lib/ytalk/ytalkrc.sample
	@PKG_PREFIX="${PREFIX}" ${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
