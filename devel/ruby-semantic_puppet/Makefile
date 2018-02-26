# $OpenBSD: Makefile,v 1.4 2018/02/26 08:45:19 sebastia Exp $

COMMENT =		compare semantic versioning

DISTNAME =		semantic_puppet-1.0.1
CATEGORIES =		devel
HOMEPAGE =		https://github.com/puppetlabs/semantic_puppet-gem	
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM =   Yes

MODULES =		lang/ruby

BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		devel/ruby-gettext-setup,${MODRUBY_FLAVOR}>=0.3

CONFIGURE_STYLE = 	ruby gem

.include <bsd.port.mk>
