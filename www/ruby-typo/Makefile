# $OpenBSD: Makefile,v 1.9 2010/11/22 08:36:54 espie Exp $

BROKEN = Ruby hangs during rdoc generation and it doesn't work with newer rails.

COMMENT=	weblog system written in Ruby using Ruby on Rails

DISTNAME=	typo-5.2
PKGNAME=	ruby-${DISTNAME}
REVISION=	0

CATEGORIES=	www

MAINTAINER=	Paul Irofti <pirofti@openbsd.org>

# MIT/X Consortium
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	www/ruby-rails>=2.2 \
		www/ruby-mongrel>=1.1.3 \
		sysutils/ruby-mongrel_cluster \
		databases/ruby-sqlite3 \
		sysutils/ruby-rails-app-installer \
		net/ruby-xmpp4r \
		devel/ruby-rcov>=0.8.1 \
		devel/ruby-flexmock>=0.8.0 \
		devel/ruby-rspec>=1.1.1 \
		devel/ruby-debug \
		textproc/ruby-htmlentities>=4.0.0 \
		converters/ruby-json>=1.1.3

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
