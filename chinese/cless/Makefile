# New ports collection makefile for:    cless
# Version required:     2.90
# Date created:         Thu Jan 18, 2000
# Whom:                 Kevin Lo <kevlo@openbsd.org>
#
# $OpenBSD: Makefile,v 1.4 2000/02/23 08:51:51 kevlo Exp $
#

DISTNAME=       cless-290
PKGNAME=        zh-${DISTNAME}
CATEGORIES=     chinese misc
MASTER_SITES=   ftp://ftp.cuhk.hk/pub/chinese/ifcss/software/unix/c-utils/ \
                ftp://ftp.edu.tw/Chinese/ifcss/software/unix/c-utils/

MAINTAINER=     kevlo@openbsd.org

LICENSE_TYPE=           BSD
PERMIT_PACKAGE_CDROM=   YES
PERMIT_PACKAGE_FTP=     YES
PERMIT_DISTFILES_CDROM= YES
PERMIT_DISTFILES_FTP=   YES

GNU_CONFIGURE=  yes
CFLAGS+=        -DHANZI # LDFLAGS=-s datadir=/usr/local/lib/less

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/cless
	${INSTALL_DATA} ${WRKSRC}/README.CLESS ${PREFIX}/share/doc/cless 

.include <bsd.port.mk>
