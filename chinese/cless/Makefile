# New ports collection makefile for:    cless
# Version required:     2.90
# Date created:         Thu Jan 18, 2000
# Whom:                 Kevin Lo <kevlo@openbsd.org>
#
# $OpenBSD: Makefile,v 1.2 2000/02/11 01:10:00 espie Exp $
#

DISTNAME=       cless-290
PKGNAME=        zh-${DISTNAME}
CATEGORIES=     chinese misc
MASTER_SITES=   ftp://ftp.cuhk.hk/pub/chinese/ifcss/software/unix/c-utils/ \
                ftp://ftp.edu.tw/Chinese/ifcss/software/unix/c-utils/

MAINTAINER=     kevlo@openbsd.org

GNU_CONFIGURE=  yes
CFLAGS+=        -DHANZI # LDFLAGS=-s datadir=/usr/local/lib/less

post-install:
	mkdir -p ${PREFIX}/share/doc/cless
	${INSTALL_DATA} ${WRKSRC}/README.CLESS ${PREFIX}/share/doc/cless 

.include <bsd.port.mk>
