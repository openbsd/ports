#  $OpenBSD: Makefile,v 1.17 2019/07/07 18:46:44 jasper Exp $

COMMENT =		rspec expectations and matchers
DISTNAME =		rspec-expectations-3.8.4

BUILD_DEPENDS = 	${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-diff-lcs,${MODRUBY_FLAVOR} \
			devel/ruby-rspec/3/support,${MODRUBY_FLAVOR}>=3.8.0

.include <bsd.port.mk>
