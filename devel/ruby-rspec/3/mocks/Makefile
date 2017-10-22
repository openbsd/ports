#  $OpenBSD: Makefile,v 1.13 2017/10/22 12:34:00 jasper Exp $

COMMENT =		rspec stubbing and mocking
DISTNAME =		rspec-mocks-3.7.0

BUILD_DEPENDS = 	${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-diff-lcs,${MODRUBY_FLAVOR} \
			devel/ruby-rspec/3/support,${MODRUBY_FLAVOR}>=3.7.0

.include <bsd.port.mk>
