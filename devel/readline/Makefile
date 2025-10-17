COMMENT =		library to edit command lines as they are typed in

V =			8.3
DISTNAME =		readline-${V}
PKGNAME =		readline-${V}

LIBV =			4.0
SHARED_LIBS +=		ehistory ${LIBV}
SHARED_LIBS +=		ereadline ${LIBV}

CATEGORIES =		devel

HOMEPAGE =		https://tiswww.case.edu/php/chet/readline/rltop.html

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += curses

SITES =			${SITE_GNU:=readline/}
#SITES.p =		${SITE_GNU:=readline/${DISTNAME}-patches/}

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--includedir=${PREFIX}/include/ereadline
SEPARATE_BUILD =	Yes

MAKE_ENV =		RL_SHLIB_V=${LIBereadline_VERSION}
# otherwise the produced .pc file tries to reference a (nonexistent) termcap.pc file
CONFIGURE_ENV =		bash_cv_termcap_lib=ncurses
MAKE_FLAGS =		SHLIB_LIBS=-lcurses

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
