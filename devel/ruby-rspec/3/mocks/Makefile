#  $OpenBSD: Makefile,v 1.16 2019/07/07 18:46:44 jasper Exp $

COMMENT =		rspec stubbing and mocking
DISTNAME =		rspec-mocks-3.8.1

BUILD_DEPENDS = 	${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-diff-lcs,${MODRUBY_FLAVOR} \
			devel/ruby-rspec/3/support,${MODRUBY_FLAVOR}>=3.8.0

.include <bsd.port.mk>
