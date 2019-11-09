# $OpenBSD: Makefile,v 1.4 2019/11/09 12:19:15 ajacoutot Exp $

COMMENT =	websocket library

V =		1.1.0
DISTNAME =	wslay-$V

SHARED_LIBS +=  wslay                     0.0 # 1.0

CATEGORIES =	www

HOMEPAGE =	https://tatsuhiro-t.github.io/wslay/

# MIT
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://github.com/tatsuhiro-t/wslay/releases/download/release-$V/

BUILD_DEPENDS =		devel/cunit

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS=-I${LOCALBASE}/include \
			LDFLAGS=-L${LOCALBASE}/lib

.include <bsd.port.mk>
