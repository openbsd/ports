# $OpenBSD: Makefile,v 1.21 2011/06/23 22:50:29 naddy Exp $
#

COMMENT=	curses-based real time state and rule display for pf

DISTNAME=	pftop-0.7
REVISION =	7
CATEGORIES=	sysutils

HOMEPAGE=	http://www.eee.metu.edu.tr/~canacar/pftop/
MAINTAINER=	Can Erkin Acar <canacar@openbsd.org>

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c curses 

MASTER_SITES=	http://www.eee.metu.edu.tr/~canacar/

FAKE_FLAGS=	BINDIR=${PREFIX}/sbin MANDIR=${PREFIX}/man/man


.include <bsd.port.mk>
