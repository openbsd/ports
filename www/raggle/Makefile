# $OpenBSD: Makefile,v 1.14 2013/03/20 19:13:50 jeremy Exp $

COMMENT=	console RSS aggregator

DISTNAME=	raggle-0.4.4
REVISION =	6

CATEGORIES=	www news

HOMEPAGE=	http://raggle.org

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}/files/

MODULES=	lang/ruby
MODRUBY_REV=	1.8
RUN_DEPENDS=	devel/ruby-ncurses,${MODRUBY_FLAVOR}
BUILD_DEPENDS+=${MODRUBY_BUILD_DEPENDS}

NO_TEST=	Yes
NO_BUILD=	Yes
PKG_ARCH=	*
MAKE_ENV=	RUBY=${RUBY}
MODRUBY_ADJ_FILES=	raggle *.rb
USE_GROFF =	Yes

.include <bsd.port.mk>
