# $OpenBSD: Makefile,v 1.2 2000/08/10 21:12:48 danh Exp $ 

DISTNAME=	courier-imap-0.99
CATEGORIES=	mail
NEED_VERSION=	1.319
MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= courier

MAINTAINER=	anil@recoil.org
HOMEPAGE=	http://www.inter7.com/courierimap/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-root-check --datadir=${PREFIX}/sbin

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/courier-imap
	${INSTALL_DATA} ${WRKBUILD}/imapd-ssl.config \
		${PREFIX}/share/examples/courier-imap
	${INSTALL_DATA} ${WRKBUILD}/imapd.config \
		${PREFIX}/share/examples/courier-imap
	${INSTALL_DATA} ${WRKBUILD}/imapd.cnf \
		${PREFIX}/share/examples/courier-imap

.include <bsd.port.mk>
