# $OpenBSD: Makefile,v 1.16 2019/07/12 20:45:57 sthen Exp $

COMMENT =		library to edit command lines as they are typed in

V =			7.0
DISTNAME =		readline-${V}
PKGNAME =		readline-${V}
REVISION =		0

LIBV =			2.0
SHARED_LIBS +=		ehistory ${LIBV}
SHARED_LIBS +=		ereadline ${LIBV}

CATEGORIES =		devel

HOMEPAGE =		http://tiswww.case.edu/php/chet/readline/rltop.html

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += curses

MASTER_SITES =		${MASTER_SITE_GNU:=readline/}
#MASTER_SITES0 =		${MASTER_SITE_GNU:=readline/${DISTNAME}-patches/}
CONFIGURE_STYLE =	gnu
SEPARATE_BUILD =	Yes

MAKE_ENV =		RL_SHLIB_V=${LIBereadline_VERSION}
MAKE_FLAGS =		SHLIB_LIBS=-lcurses
FAKE_FLAGS =		includedir=${TRUEPREFIX}/include/ereadline

pre-configure:
	perl -pi \
		-e 's,History: \(history\).  ,eHistory: (ehistory).,;' \
		-e 's,Readline: \(readline\).  ,eReadline: (ereadline).,;' \
		-e 's,RLuserman: \(rluserman\).  ,eRLuserman: (erluserman).,;' \
		-e 's,readline.info,ereadline.info,g;' \
		-e 's,history.info,ehistory.info,g;' \
		-e 's,rluserman.info,erluserman.info,g' \
		${WRKSRC}/doc/{readline,history,rluserman}.info

.include <bsd.port.mk>
