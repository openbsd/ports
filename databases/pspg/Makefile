# $OpenBSD: Makefile,v 1.5 2021/12/14 09:42:35 op Exp $

COMMENT =	UNIX pager optimized for tabular data

GH_ACCOUNT =	okbob
GH_PROJECT =	pspg
GH_TAGNAME =	5.5.3

CATEGORIES =	databases

MAINTAINER =	Omar Polo <op@omarpolo.com>

#BSD2
PERMIT_PACKAGE =	Yes

WANTLIB += c curses ereadline m panel pq

LIB_DEPENDS =		databases/postgresql,-main \
			devel/readline

USE_GMAKE =		Yes

CONFIGURE_STYLE =	autoconf no-autoheader
CONFIGURE_ARGS =	CFLAGS="${CFLAGS}" LDFLAGS="${LDFLAGS}"

AUTOCONF_VERSION =	2.69

NO_TEST =		Yes

CFLAGS +=		-I${LOCALBASE}/include/ereadline
LDFLAGS +=		-L${LOCALBASE}/lib/ -lereadline

.include <bsd.port.mk>
