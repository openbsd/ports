# New ports collection makefile for:    cless
# Version required:     2.90
# Date created:         Thu Jan 18, 2000
# Whom:                 Kevin Lo <kevlo@openbsd.org>
#
# $OpenBSD: Makefile,v 1.22 2018/05/12 14:01:17 espie Exp $
#

COMMENT=	pager utility that speaks Chinese

DISTNAME=       cless-290
PKGNAME=        zh-${DISTNAME}
CATEGORIES=     chinese misc
MASTER_SITES=   http://ftp.cuhk.hk/pub/chinese/ifcss/software/unix/c-utils/
REVISION =	1

# BSD
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=		c curses termcap

CONFIGURE_STYLE= gnu dest old
CFLAGS+=        -DHANZI # LDFLAGS=-s datadir=/usr/local/lib/less

post-install:
	${INSTALL_DATA} ${WRKSRC}/README.CLESS ${PREFIX}/share/doc/cless

.include <bsd.port.mk>
