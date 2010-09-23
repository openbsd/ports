# $OpenBSD: Makefile,v 1.3 2010/09/23 22:21:54 jeremy Exp $

COMMENT=	console RSS aggregator

DISTNAME=	raggle-0.4.4
REVISION=	0

CATEGORIES=	www news

MAINTAINER=	Landry Breuil <gaston@gcu.info>
HOMEPAGE=	http://raggle.org

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/files/

BUILD_DEPENDS=	:ruby->=1.8,<=1.9:lang/ruby/1.8,-main
RUN_DEPENDS=	:ruby->=1.8,<=1.9:lang/ruby/1.8,-main \
		::devel/ruby-ncurses

NO_REGRESS=	Yes
NO_BUILD=	Yes
PKG_ARCH=	*

.include <bsd.port.mk>
