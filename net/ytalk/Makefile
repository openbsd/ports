# $OpenBSD: Makefile,v 1.8 2000/02/10 19:04:00 brad Exp $

DISTNAME=	ytalk-3.1.1
CATEGORIES=	net
MASTER_SITES=	http://www.iagora.com/~espel/ytalk/

NEED_VERSION=	1.79

MAINTAINER=	espie@openbsd.org

GNU_CONFIGURE=	yes

INSTALL_TARGET=	install.bin install.man

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/ytalk
	${INSTALL_DATA} ${WRKBUILD}/ytalkrc ${PREFIX}/lib/ytalk/ytalkrc.sample
	@PKG_PREFIX="${PREFIX}" ${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
