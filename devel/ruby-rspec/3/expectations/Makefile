#  $OpenBSD: Makefile,v 1.16 2019/04/25 17:35:52 jasper Exp $

COMMENT =		rspec expectations and matchers
DISTNAME =		rspec-expectations-3.8.3

BUILD_DEPENDS = 	${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-diff-lcs,${MODRUBY_FLAVOR} \
			devel/ruby-rspec/3/support,${MODRUBY_FLAVOR}>=3.8.0

.include <bsd.port.mk>
