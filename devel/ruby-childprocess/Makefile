COMMENT =		control external programs

DISTNAME =		childprocess-5.1.0
CATEGORIES =		devel
HOMEPAGE =		https://github.com/enkessler/childprocess
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE = 	ruby gem

# Tests require coveralls gem, with gem installed:
# 70 examples, 4 failures
NO_TEST =		Yes
MODRUBY_TEST =		rspec3

.include <bsd.port.mk>
