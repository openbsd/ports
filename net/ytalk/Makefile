# $OpenBSD: Makefile,v 1.13 2000/06/10 15:28:39 espie Exp $

DISTNAME=	ytalk-3.1.1
CATEGORIES=	net
NEED_VERSION=	1.299
HOMEPAGE=	http://www.iagora.com/~espel/ytalk/
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	espie@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# No gnu-configure for now, need to set up DESTDIR in prefix/etc for fake
# to work.
CONFIGURE_STYLE=gnu dest

INSTALL_TARGET=	install.bin install.man

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/ytalk
	${INSTALL_DATA} ${WRKBUILD}/ytalkrc ${PREFIX}/lib/ytalk/ytalkrc.sample

.include <bsd.port.mk>
