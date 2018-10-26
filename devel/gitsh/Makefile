# $OpenBSD: Makefile,v 1.9 2018/10/26 16:16:24 jeremy Exp $

VERSION =		0.12

COMMENT =		interactive shell for git

DISTNAME =		gitsh-${VERSION}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/thoughtbot/gitsh

MAINTAINER =		Mike Burns <mike+openbsd@mike-burns.com>

# License: BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		ereadline curses ${MODRUBY_WANTLIB}

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
