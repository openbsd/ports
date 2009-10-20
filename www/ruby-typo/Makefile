# $OpenBSD: Makefile,v 1.6 2009/10/20 09:39:05 bernd Exp $

BROKEN = Ruby hangs during rdoc generation and it doesn't work with newer rails.

COMMENT=	weblog system written in Ruby using Ruby on Rails

DISTNAME=	typo-5.2
PKGNAME=	ruby-${DISTNAME}

CATEGORIES=	www

MAINTAINER=	Paul Irofti <pirofti@openbsd.org>

# MIT/X Consortium
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=typo/}

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:ruby-rails->=2.2:www/ruby-rails \
		:ruby-mongrel->=1.1.3:www/ruby-mongrel \
		::sysutils/ruby-mongrel_cluster \
		::databases/ruby-sqlite3 \
		::sysutils/ruby-rails-app-installer \
		::net/ruby-xmpp4r \
		:ruby-rcov->=0.8.1:devel/ruby-rcov \
		:ruby-flexmock->=0.8.0:devel/ruby-flexmock \
		:ruby-rspec->=1.1.1:devel/ruby-rspec \
		::devel/ruby-debug \
		:ruby-htmlentities->=4.0.0:textproc/ruby-htmlentities \
		:ruby-json->=1.1.3:converters/ruby-json

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
