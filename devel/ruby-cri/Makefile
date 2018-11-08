# $OpenBSD: Makefile,v 1.2 2018/11/08 09:21:51 sebastia Exp $

COMMENT =		command line interfaces with subcommands

DISTNAME =		cri-2.15.2
CATEGORIES =		devel
HOMEPAGE =		http://stoneship.org/software/cri/
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =   Yes

MODULES =		lang/ruby
BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		devel/ruby-colored,${MODRUBY_FLAVOR}>=1.2,<2

CONFIGURE_STYLE = 	ruby gem

.include <bsd.port.mk>
