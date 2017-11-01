# $OpenBSD: Makefile,v 1.7 2017/11/01 10:12:25 jeremy Exp $

VERSION =		0.11.2

COMMENT =		interactive shell for git

DISTNAME =		gitsh-${VERSION}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/thoughtbot/gitsh

MAINTAINER =		Mike Burns <mike+openbsd@mike-burns.com>

# License: BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ereadline ncurses ${MODRUBY_WANTLIB}

MASTER_SITES =		${HOMEPAGE}/releases/download/v${VERSION}/

MODULES =		lang/ruby
RUN_DEPENDS =		devel/git
LIB_DEPENDS =		devel/readline

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		READLINE_LIB="ereadline" \
			CPPFLAGS="-I${LOCALBASE}/include/ereadline" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			RUBY="${RUBY}"

.include <bsd.port.mk>
