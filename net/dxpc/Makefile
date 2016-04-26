# $OpenBSD: Makefile,v 1.33 2016/04/26 16:37:47 naddy Exp $

COMMENT =	X11 over a low bandwidth link
VERSION =	3.8.2
DISTNAME =	dxpc-${VERSION}
REVISION =	0
CATEGORIES =	net x11

MAINTAINER =	Marc Espie <espie@openbsd.org>

#		BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://www.vigor.nu/dxpc/${VERSION}/
HOMEPAGE =		http://www.vigor.nu/dxpc/

LIB_DEPENDS =		archivers/lzo
WANTLIB =		c m stdc++ lzo

USE_X11 = 		Yes

CONFIGURE_STYLE =	gnu dest
CONFIGURE_ARGS +=	--with-lzo-lib=${LOCALBASE}

MAKE_FLAGS +=		LDFLAGS=-L${LOCALBASE}/lib

NO_TEST =		Yes

.include <bsd.port.mk>
