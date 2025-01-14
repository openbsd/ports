COMMENT =		support libraries and Ruby extensions extracted from Rails

DISTNAME =		activesupport-7.2.2.1
CATEGORIES =		devel
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		devel/ruby-concurrent-ruby,${MODRUBY_FLAVOR},>=1.3.1,<2 \
			devel/ruby-i18n,${MODRUBY_FLAVOR},>=1.6,<2 \
			net/ruby-connection_pool,${MODRUBY_FLAVOR},>=2.2.5 \
			sysutils/ruby-tzinfo,${MODRUBY_FLAVOR}>=2.0.5,<3

CONFIGURE_STYLE = 	ruby gem

.include <bsd.port.mk>
