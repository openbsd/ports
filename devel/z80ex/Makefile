# $OpenBSD: Makefile,v 1.1.1.1 2020/07/02 14:32:39 bcallah Exp $

COMMENT =	ZiLOG Z80 CPU emulation library
DISTNAME =	z80ex-1.1.21
CATEGORIES =	devel

SHARED_LIBS +=	z80ex                     0.0 # 1.1.21
SHARED_LIBS +=	z80ex_dasm                0.0 # 1.1.21

HOMEPAGE =	https://z80ex.sourceforge.io/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=z80ex/}

MODULES =	devel/cmake

NO_TEST =	Yes

.include <bsd.port.mk>
