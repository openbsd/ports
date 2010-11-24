# $OpenBSD: Makefile,v 1.8 2010/11/24 21:35:16 jeremy Exp $

COMMENT=	console RSS aggregator

DISTNAME=	raggle-0.4.4
REVISION =	2

CATEGORIES=	www news

MAINTAINER=	Landry Breuil <gaston@gcu.info>
HOMEPAGE=	http://raggle.org

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/files/

MODULES=	lang/ruby
RUN_DEPENDS=	devel/ruby-ncurses
BUILD_DEPENDS+=${MODRUBY_BUILD_DEPENDS}

NO_REGRESS=	Yes
NO_BUILD=	Yes
PKG_ARCH=	*
MAKE_ENV=	RUBY=${RUBY}
MODRUBY_ADJ_FILES=	raggle *.rb
USE_GROFF =	Yes

.include <bsd.port.mk>
