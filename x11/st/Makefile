# $OpenBSD: Makefile,v 1.21 2020/05/23 19:32:37 mestre Exp $

COMMENT=		simple X terminal

V=			0.8.3
DISTNAME=		st-${V}

CATEGORIES=		x11

HOMEPAGE=		https://st.suckless.org/

MAINTAINER=		Joerg Jung <jung@openbsd.org>

# MIT/X Consortium License
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB=		X11 Xft c fontconfig freetype m util z

MASTER_SITES=		https://dl.suckless.org/st/

MAKE_ENV=		LDFLAGS="${LDFLAGS}" \
			X11INC=${X11BASE}/include \
			X11LIB=${X11BASE}/lib

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/st ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/st.1 ${PREFIX}/man/man1/
	sed -i s/VERSION/${V}/g ${PREFIX}/man/man1/st.1
	tic -s -x -o ${PREFIX}/share/terminfo ${WRKSRC}/st.info

.include <bsd.port.mk>
