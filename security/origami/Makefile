# $OpenBSD: Makefile,v 1.2 2019/07/12 20:49:06 sthen Exp $

COMMENT =	parse, modify and generate PDF documents

DISTNAME =	origami-2.1.0

CATEGORIES =	security textproc

HOMEPAGE =	https://github.com/gdelugre/origami

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# LGPL-3.0+
PERMIT_PACKAGE =	Yes

CONFIGURE_STYLE =	gem

MODULES =	lang/ruby
BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-colorize,${MODRUBY_FLAVOR}>=0.7,<1.0 \
		devel/ruby-therubyracer,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
