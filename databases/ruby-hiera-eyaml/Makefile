# $OpenBSD: Makefile,v 1.6 2016/09/05 09:00:07 jasper Exp $

COMMENT =	Hiera backend for decrypting encrypted yaml properties

DISTNAME =	hiera-eyaml-2.1.0
CATEGORIES =	databases

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby
MODRUBY_REV=		2.2

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		databases/ruby-hiera,${MODRUBY_FLAVOR} \
			devel/ruby-highline,${MODRUBY_FLAVOR}<1.7 \
			devel/ruby-trollop,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
