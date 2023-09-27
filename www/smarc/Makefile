COMMENT =	static web mail archive generator

DISTNAME =	smarc-0.3

CATEGORIES =	www mail

HOMEPAGE =	https://projects.omarpolo.com/smarc.html

MAINTAINER =	Omar Polo <op@openbsd.org>

# Public Domain; configure and compats are BSD-like
PERMIT_PACKAGE =	Yes

# uses pledge
# uses unveil
WANTLIB += c event sqlite3

SITES =		https://ftp.omarpolo.com/

MODULES =	perl

RUN_DEPENDS =	mail/mblaze
LIB_DEPENDS =	databases/sqlite3

CONFIGURE_STYLE = simple
CONFIGURE_ARGS +=	--prefix=${TRUEPREFIX} \
			--sysconfdir="${TRUEPREFIX}/share/examples" \
			--realsysconfdir="${SYSCONFDIR}"

NO_TEST =		Yes

.include <bsd.port.mk>
