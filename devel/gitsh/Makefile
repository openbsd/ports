VERSION =		0.13
REVISION =		5

COMMENT =		interactive shell for git

DISTNAME =		gitsh-${VERSION}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/thoughtbot/gitsh

MAINTAINER =		Mike Burns <mike+openbsd@mike-burns.com>

# License: BSD
PERMIT_PACKAGE =	Yes

# Ruby 3.2 libs need ports-gcc
COMPILER =		base-clang ports-gcc

WANTLIB +=		ereadline curses ${MODRUBY_WANTLIB}

SITES =			${HOMEPAGE}/releases/download/v${VERSION}/

MODULES =		lang/ruby
RUN_DEPENDS =		devel/git
LIB_DEPENDS =		devel/readline

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		READLINE_LIB="ereadline" \
			CPPFLAGS="-I${LOCALBASE}/include/ereadline" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			RUBY="${RUBY}"

.include <bsd.port.mk>
