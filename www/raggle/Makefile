# $OpenBSD: Makefile,v 1.4 2010/10/07 18:10:47 jeremy Exp $

COMMENT=	console RSS aggregator

DISTNAME=	raggle-0.4.4
REVISION=	1

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
RUN_DEPENDS=	::devel/ruby-ncurses

NO_REGRESS=	Yes
NO_BUILD=	Yes
PKG_ARCH=	*
MAKE_ENV=	RUBY=${RUBY}
MODRUBY_ADJ_FILES=	raggle *.rb

.include <bsd.port.mk>
