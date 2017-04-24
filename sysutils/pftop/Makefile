# $OpenBSD: Makefile,v 1.32 2017/04/24 01:46:06 jca Exp $

# XXX should be fixed to use the new queuing subsystem

COMMENT=	curses-based real time state and rule display for pf

DISTNAME=	pftop-0.7
REVISION=	16
CATEGORIES=	sysutils

HOMEPAGE=	http://www.eee.metu.edu.tr/~canacar/pftop/
MAINTAINER=	Can Erkin Acar <canacar@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c curses

MASTER_SITES=	http://www.eee.metu.edu.tr/~canacar/

MAKE_FLAGS=	CC="${CC}"
FAKE_FLAGS=	BINDIR=${PREFIX}/sbin MANDIR=${PREFIX}/man/man

.include <bsd.port.mk>
