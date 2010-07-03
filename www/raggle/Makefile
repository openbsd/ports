# $OpenBSD: Makefile,v 1.2 2010/07/03 02:44:14 naddy Exp $

COMMENT=	console RSS aggregator

DISTNAME=	raggle-0.4.4

CATEGORIES=	www news

MAINTAINER=	Landry Breuil <gaston@gcu.info>
HOMEPAGE=	http://raggle.org

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/files/

BUILD_DEPENDS=	::lang/ruby
RUN_DEPENDS=	::lang/ruby \
		::devel/ruby-ncurses

NO_REGRESS=	Yes
NO_BUILD=	Yes
PKG_ARCH=	*

.include <bsd.port.mk>
