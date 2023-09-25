COMMENT=		simple X terminal

V=			0.9
DISTNAME=		st-${V}
SUPDISTFILES.p=		st-scrollback-0.8.5.diff
REVISION=		0

CATEGORIES=		x11

HOMEPAGE=		https://st.suckless.org/

MAINTAINER=		Joerg Jung <jung@openbsd.org>

# MIT/X Consortium License
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB=		X11 Xft c fontconfig freetype m util

SITES=			https://dl.suckless.org/st/
SITES.p=		https://st.suckless.org/patches/scrollback/

MAKE_ENV=		LDFLAGS="${LDFLAGS}" \
			X11INC=${X11BASE}/include \
			X11LIB=${X11BASE}/lib

NO_TEST=		Yes

FLAVORS=		scrollback
FLAVOR?=

.if ${FLAVOR:Mscrollback}
PATCHFILES.p=		${SUPDISTFILES.p}
.endif
PATCH_DIST_STRIP=	-p1

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/st ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/st.1 ${PREFIX}/man/man1/
	sed -i s/VERSION/${V}/g ${PREFIX}/man/man1/st.1
	tic -s -x -o ${PREFIX}/share/terminfo ${WRKSRC}/st.info

.include <bsd.port.mk>
