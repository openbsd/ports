# $OpenBSD: Makefile,v 1.25 2013/03/11 19:51:26 sthen Exp $
#

COMMENT=	curses-based real time state and rule display for pf

DISTNAME=	pftop-0.7
REVISION=	10
CATEGORIES=	sysutils

HOMEPAGE=	http://www.eee.metu.edu.tr/~canacar/pftop/
MAINTAINER=	Can Erkin Acar <canacar@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c curses

MASTER_SITES=	http://www.eee.metu.edu.tr/~canacar/

FAKE_FLAGS=	BINDIR=${PREFIX}/sbin MANDIR=${PREFIX}/man/man

.include <bsd.port.mk>
