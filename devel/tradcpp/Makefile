# $OpenBSD: Makefile,v 1.1.1.1 2021/12/12 11:35:44 robert Exp $

COMMENT =		traditional (K&R-style) C preprocessor

V =			0.5.3
DISTNAME =		tradcpp-${V}

CATEGORIES =		devel

HOMEPAGE =		https://www.netbsd.org/~dholland/tradcpp/
MASTER_SITES =		https://ftp.NetBSD.org/pub/NetBSD/misc/dholland/

# BSD
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB =		c

MAKE_FLAGS =		BINDIR=${PREFIX}/bin MANDIR=${PREFIX}/man/man
NO_TEST =		Yes

.include <bsd.port.mk>
