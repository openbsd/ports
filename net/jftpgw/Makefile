# $OpenBSD: Makefile,v 1.13 2001/05/06 05:00:02 lebel Exp $

COMMENT=	"FTP proxy"

DISTNAME=	jftpgw-0.0.11f
CATEGORIES=	net
NEED_VERSION=	1.402
MASTER_SITES=	http://www.mcknight.de/jftpgw/

HOMEPAGE=	http://www.mcknight.de/jftpgw/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-crypt \
		--with-logpath="/var/log" --with-confpath="${SYSCONFDIR}"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/jftpgw
	cd ${WRKBUILD}; ${INSTALL_DATA} jftpgw.conf.sample jftpgw.access.sample \
		${PREFIX}/share/examples/jftpgw

.include <bsd.port.mk>
