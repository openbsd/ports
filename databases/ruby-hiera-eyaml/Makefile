# $OpenBSD: Makefile,v 1.1.1.1 2015/03/15 18:19:34 sebastia Exp $

COMMENT =	Hiera backend for decrypting encrypted yaml properties

DISTNAME =	hiera-eyaml-2.0.6
CATEGORIES =	databases

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		databases/ruby-hiera,${MODRUBY_FLAVOR} \
			devel/ruby-highline,${MODRUBY_FLAVOR} \
			devel/ruby-trollop,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
