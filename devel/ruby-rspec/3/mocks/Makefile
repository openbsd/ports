#  $OpenBSD: Makefile,v 1.10 2016/01/11 07:36:09 jasper Exp $

COMMENT =		rspec stubbing and mocking
DISTNAME =		rspec-mocks-3.4.1

BUILD_DEPENDS = 	${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-diff-lcs,${MODRUBY_FLAVOR} \
			devel/ruby-rspec/3/support,${MODRUBY_FLAVOR}>=3.4.0

.include <bsd.port.mk>
