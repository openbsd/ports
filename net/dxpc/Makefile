# $OpenBSD: Makefile,v 1.39 2019/07/12 20:48:25 sthen Exp $

COMMENT =	X11 over a low bandwidth link
VERSION =	3.8.2
DISTNAME =	dxpc-${VERSION}
REVISION =	3
CATEGORIES =	net x11

MAINTAINER =	Marc Espie <espie@openbsd.org>

#		BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =		http://www.vigor.nu/dxpc/${VERSION}/
HOMEPAGE =		http://www.vigor.nu/dxpc/

LIB_DEPENDS =		archivers/lzo
WANTLIB =		c m ${COMPILER_LIBCXX} lzo

COMPILER =		base-clang ports-gcc base-gcc

USE_X11 = 		Yes

CONFIGURE_STYLE =	gnu dest
CONFIGURE_ARGS +=	--with-lzo-lib=${LOCALBASE}

MAKE_FLAGS +=		LDFLAGS=-L${LOCALBASE}/lib

NO_TEST =		Yes

.include <bsd.port.mk>
