# $OpenBSD: Makefile,v 1.5 2000/11/22 11:42:31 avsm Exp $ 

DISTNAME=	courier-imap-1.2.3
CATEGORIES=	mail
NEED_VERSION=	1.340
MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= courier

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>
HOMEPAGE=	http://www.inter7.com/courierimap/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=	pop3
FLAVOR?=

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-root-check --datadir=${PREFIX}/sbin --with-userdb=/etc/userdb --with-authuserdb
EXAMPLE_DIR=	${PREFIX}/share/examples/courier-imap

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/courier-imap
.for i in pop3d imapd
	${INSTALL_DATA} ${WRKBUILD}/$i-ssl.config ${EXAMPLE_DIR}
	${INSTALL_DATA} ${WRKBUILD}/$i.config ${EXAMPLE_DIR}
	${INSTALL_DATA} ${WRKBUILD}/$i.cnf ${EXAMPLE_DIR}
.endfor

.include <bsd.port.mk>
