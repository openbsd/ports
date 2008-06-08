# $OpenBSD: Makefile,v 1.1.1.1 2008/06/08 17:10:04 landry Exp $

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
RUN_DEPENDS=	${BUILD_DEPENDS} \
		::devel/ruby-ncurses

NO_REGRESS=	Yes
NO_BUILD=	Yes
PKG_ARCH=	*

.include <bsd.port.mk>
