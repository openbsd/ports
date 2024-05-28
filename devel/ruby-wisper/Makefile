COMMENT =		provide objects with pubsub capabilities

DISTNAME =		wisper-2.0.1
CATEGORIES =		devel
HOMEPAGE =		https://github.com/krisleech/wisper
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE = 	ruby gem

# Tests require coveralls gem, with that installed 0 failures
NO_TEST =		Yes
MODRUBY_TEST =		rspec3

post-install:
	mv ${PREFIX}/bin/setup${GEM_BIN_SUFFIX} \
		${PREFIX}/bin/wisper-setup${GEM_BIN_SUFFIX}
	mv ${PREFIX}/bin/console${GEM_BIN_SUFFIX} \
		${PREFIX}/bin/wisper-console${GEM_BIN_SUFFIX}

.include <bsd.port.mk>
