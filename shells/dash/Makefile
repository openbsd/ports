# $OpenBSD: Makefile,v 1.1.1.1 2013/03/14 16:57:30 sthen Exp $

COMMENT =		Debian Almquist shell, POSIX-compliant

DISTNAME =		dash-0.5.7
CATEGORIES =		shells

HOMEPAGE =		http://gondor.apana.org.au/~herbert/dash/

MAINTAINER =		Jeremie Courreges-Anglas <jca@wxcvbn.org>

# 3-clause BSD
# (source contains GPLv2 tool used during build only, see COPYING)
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c curses edit

MASTER_SITES =		${HOMEPAGE:=files/}

SEPARATE_BUILD =	flavored
USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-fnmatch --enable-glob --with-libedit
CONFIGURE_ENV +=	LIBS="-ledit -lcurses"

FLAVORS =		static
FLAVOR ?=

.if ${FLAVOR:Mstatic}
# --enable-static will fail because it also brings --Wl,--fatal-warnings
CONFIGURE_ENV +=	LDFLAGS="-static"
.endif

.include <bsd.port.mk>
