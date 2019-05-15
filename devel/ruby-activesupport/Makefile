# $OpenBSD: Makefile,v 1.32 2019/05/15 06:42:17 sebastia Exp $

COMMENT =		support libraries and Ruby extensions extracted from Rails

DISTNAME =		activesupport-5.2.3
CATEGORIES =		devel
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =   Yes

MODULES =		lang/ruby

BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		devel/ruby-concurrent-ruby,${MODRUBY_FLAVOR},>=1.0.2,<2 \
			devel/ruby-i18n,${MODRUBY_FLAVOR},>=0.7,<2 \
			devel/ruby-minitest,${MODRUBY_FLAVOR}>=5.1,<6 \
			sysutils/ruby-tzinfo,${MODRUBY_FLAVOR}>=1.1,<2
				

CONFIGURE_STYLE = 	ruby gem

.include <bsd.port.mk>
