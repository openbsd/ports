# $OpenBSD: Makefile,v 1.5 2019/06/25 07:50:51 sebastia Exp $

COMMENT =		command line interfaces with subcommands

DISTNAME =		cri-2.15.6
CATEGORIES =		devel
HOMEPAGE =		http://stoneship.org/software/cri/
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby
BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		devel/ruby-colored,${MODRUBY_FLAVOR}>=1.2,<2

CONFIGURE_STYLE = 	ruby gem

.include <bsd.port.mk>
