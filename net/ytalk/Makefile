# $OpenBSD: Makefile,v 1.3 1999/03/16 23:38:35 espie Exp $

DISTNAME=	ytalk-3.1
CATEGORIES=	net

MASTER_SITES=http://www.eleves.ens.fr:8080/home/espel/ytalk/	

MAINTAINER=	espie@cvs.openbsd.org

GNU_CONFIGURE=yes

NEED_VERSION=1.79

# No SEPARATE_BUILD

INSTALL_TARGET=install.bin install.man

post-install:
	${INSTALL_DATA} ${WRKBUILD}/ytalkrc	${PREFIX}/share/ytalkrc.sample

.include <bsd.port.mk>
