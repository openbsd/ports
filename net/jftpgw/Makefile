# $OpenBSD: Makefile,v 1.3 2000/07/28 10:05:53 brad Exp $

DISTNAME=	jftpgw-0.0.10b
CATEGORIES=	net
NEED_VERSION=	1.310
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

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/jftpgw
	${INSTALL_PROGRAM} ${WRKBUILD}/jftpgw ${PREFIX}/bin
	${INSTALL_DATA} ${WRKBUILD}/jftpgw.conf.sample ${PREFIX}/lib/jftpgw
	${INSTALL_DATA} ${WRKBUILD}/jftpgw.access.sample ${PREFIX}/lib/jftpgw

.include <bsd.port.mk>
