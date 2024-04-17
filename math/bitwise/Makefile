COMMENT =	terminal based calculator and bit manipulator
CATEGORIES =	math

DIST_TUPLE =	github mellowcandle bitwise v0.50 .

MAINTAINER =	Paco Esteban <paco@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB +=		c curses form ereadline m

LIB_DEPENDS +=		devel/readline

CONFIGURE_STYLE =	autoreconf
CONFIGURE_ARGS =	CFLAGS="${CFLAGS}" LDFLAGS="${LDFLAGS}"
AUTORECONF=		${WRKSRC}/bootstrap.sh
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16

CONFIGURE_ENV =		ax_cv_lib_readline="-lereadline"

CFLAGS +=		-I${LOCALBASE}/include \
			-I${LOCALBASE}/include/ereadline
LDFLAGS +=		-L${LOCALBASE}/lib \
			-lncurses

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bitwise
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/bitwise

.include <bsd.port.mk>
