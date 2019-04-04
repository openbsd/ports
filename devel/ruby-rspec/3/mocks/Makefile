#  $OpenBSD: Makefile,v 1.15 2019/04/04 06:21:04 naddy Exp $

COMMENT =		rspec stubbing and mocking
DISTNAME =		rspec-mocks-3.8.0
REVISION = 		0

BUILD_DEPENDS = 	${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-diff-lcs,${MODRUBY_FLAVOR} \
			devel/ruby-rspec/3/support,${MODRUBY_FLAVOR}>=3.8.0

.include <bsd.port.mk>
