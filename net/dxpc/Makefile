# $OpenBSD: Makefile,v 1.29 2010/11/19 22:31:33 espie Exp $

COMMENT =	X11 over a low bandwidth link
VERSION =	3.8.2
DISTNAME =	dxpc-${VERSION}
REVISION =	0
CATEGORIES =	net x11

MAINTAINER =	Marc Espie <espie@openbsd.org>

#		BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://www.vigor.nu/dxpc/${VERSION}/
HOMEPAGE =		http://www.vigor.nu/dxpc/

LIB_DEPENDS =		archivers/lzo
WANTLIB =		c m stdc++ lzo

USE_GROFF =		Yes

CONFIGURE_STYLE =	gnu dest
CONFIGURE_ARGS +=	--with-lzo-lib=${DEPBASE}

MAKE_FLAGS +=		LDFLAGS=-L${DEPBASE}/lib

NO_REGRESS =		Yes

.include <bsd.port.mk>
