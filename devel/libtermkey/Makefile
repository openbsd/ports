# $OpenBSD: Makefile,v 1.1.1.1 2017/01/19 20:34:04 edd Exp $

COMMENT =	library for processing of keyboard entry from a terminal
DISTNAME =	libtermkey-0.19

SHARED_LIBS +=	termkey		0.0 # 14.0

CATEGORIES =	devel
HOMEPAGE =	http://www.leonerd.org.uk/code/libtermkey/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	unibilium

MASTER_SITES =	${HOMEPAGE}

LIB_DEPENDS =	devel/unibilium

USE_GMAKE =	Yes

MAKE_FLAGS =	PREFIX=${PREFIX} \
		MANDIR=${PREFIX}/man

.include <bsd.port.mk>
