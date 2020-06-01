# $OpenBSD: Makefile,v 1.27 2020/06/01 20:37:14 jung Exp $

COMMENT=		dynamic menu for X11

V=			4.9
DISTNAME=		dmenu-${V}
REVISION=		1

CATEGORIES=		x11

HOMEPAGE=		https://tools.suckless.org/dmenu

MAINTAINER=		Joerg Jung <jung@openbsd.org>

# MIT/X
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB=		X11 Xft Xinerama c fontconfig

MASTER_SITES=		https://dl.suckless.org/tools/

RUN_DEPENDS=		fonts/terminus-font

MAKE_ENV=		LDFLAGS="${LDFLAGS}" \
			X11INC=${X11BASE}/include \
			X11LIB=${X11BASE}/lib

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/{dmenu,stest} ${PREFIX}/bin/
	${INSTALL_SCRIPT} ${WRKBUILD}/dmenu_{run,path} ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/{dmenu,stest}.1 ${PREFIX}/man/man1/
	sed -i s/VERSION/${V}/g ${PREFIX}/man/man1/{dmenu,stest}.1

.include <bsd.port.mk>
