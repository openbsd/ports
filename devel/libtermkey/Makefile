# $OpenBSD: Makefile,v 1.4 2019/07/12 20:44:40 sthen Exp $

COMMENT =	library for processing of keyboard entry from a terminal
DISTNAME =	libtermkey-0.20
REVISION =	0

SHARED_LIBS +=	termkey		0.1 # 15.0

CATEGORIES =	devel
HOMEPAGE =	http://www.leonerd.org.uk/code/libtermkey/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	unibilium

MASTER_SITES =	${HOMEPAGE}

LIB_DEPENDS =	devel/unibilium

USE_GMAKE =	Yes

MAKE_FLAGS =	PREFIX=${PREFIX} \
		MANDIR=${PREFIX}/man

.include <bsd.port.mk>
