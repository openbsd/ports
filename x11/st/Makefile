# $OpenBSD: Makefile,v 1.16 2018/03/17 13:28:39 kn Exp $

COMMENT=		simple X terminal

V=			0.8
DISTNAME=		st-${V}

CATEGORIES=		x11

HOMEPAGE=		https://st.suckless.org/

MAINTAINER=		Joerg Jung <jung@openbsd.org>

# MIT/X Consortium License
PERMIT_PACKAGE_CDROM=	Yes

# uses pledge()
WANTLIB=		c m util X11 Xft fontconfig freetype z

MASTER_SITES=		https://dl.suckless.org/st/

MAKE_ENV=		LDFLAGS="${LDFLAGS}" \
			X11INC=${X11BASE}/include \
			X11LIB=${X11BASE}/lib

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/st ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/st.1 ${PREFIX}/man/man1/
	sed -i s/VERSION/${V}/g ${PREFIX}/man/man1/st.1
	tic -s -x -o ${PREFIX}/share/terminfo ${WRKSRC}/st.info

.include <bsd.port.mk>
