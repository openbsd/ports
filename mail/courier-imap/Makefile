# $OpenBSD: Makefile,v 1.11 2001/02/21 19:04:56 avsm Exp $ 

DISTNAME=	courier-imap-1.3.4
CATEGORIES=	mail
NEED_VERSION=	1.351
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
COURIERCONF=	${SYSCONFDIR}/courier-imap
SUBST_VARS=	COURIERCONF
EXAMPLE_DIR= 	${PREFIX}/share/examples/courier-imap

CONFIGURE_STYLE= gnu old
CONFIGURE_ARGS=	--disable-root-check --datadir=${PREFIX}/sbin \
		--with-userdb=/etc/userdb --with-authuserdb \
		--without-authmysql --without-authldap \
		--sysconfdir=${COURIERCONF}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/courier-imap
.for i in pop3d-ssl imapd-ssl pop3d imapd
	${INSTALL_DATA} ${WRKINST}${COURIERCONF}/${i}.dist ${EXAMPLE_DIR}/${i}
.endfor
.for i in imapd pop3d
	${INSTALL_DATA} ${WRKINST}${COURIERCONF}/${i}.cnf ${EXAMPLE_DIR}
.endfor

.include <bsd.port.mk>
