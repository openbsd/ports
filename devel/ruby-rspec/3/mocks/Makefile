#  $OpenBSD: Makefile,v 1.14 2018/08/31 19:06:42 jasper Exp $

COMMENT =		rspec stubbing and mocking
DISTNAME =		rspec-mocks-3.8.0

BUILD_DEPENDS = 	${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-diff-lcs,${MODRUBY_FLAVOR} \
			devel/ruby-rspec/3/support,${MODRUBY_FLAVOR}>=3.8.0

.include <bsd.port.mk>
