# $OpenBSD: Makefile,v 1.8 2000/09/24 00:58:00 brad Exp $

DISTNAME=	jftpgw-0.0.11
CATEGORIES=	net
NEED_VERSION=	1.330
MASTER_SITES=	http://www.mcknight.de/jftpgw/

HOMEPAGE=	http://www.mcknight.de/jftpgw/

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-crypt \
		--with-logpath="/var/log" --with-confpath="${SYSCONFDIR}"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/jftpgw
	${INSTALL_DATA} ${WRKBUILD}/jftpgw.conf.sample ${PREFIX}/lib/jftpgw
	${INSTALL_DATA} ${WRKBUILD}/jftpgw.access.sample ${PREFIX}/lib/jftpgw

.include <bsd.port.mk>
