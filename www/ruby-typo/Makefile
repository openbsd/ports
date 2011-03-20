# $OpenBSD: Makefile,v 1.11 2011/03/20 15:54:05 espie Exp $

BROKEN = Ruby hangs during rdoc generation and it doesn't work with newer rails.

COMMENT=	weblog system written in Ruby using Ruby on Rails

DISTNAME=	typo-5.2
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
RUN_DEPENDS=	www/ruby-rails,${MODRUBY_FLAVOR}>=2.2 \
		www/ruby-mongrel,${MODRUBY_FLAVOR}>=1.1.3 \
		sysutils/ruby-mongrel_cluster,${MODRUBY_FLAVOR} \
		databases/ruby-sqlite3,${MODRUBY_FLAVOR} \
		net/ruby-xmpp4r,${MODRUBY_FLAVOR} \
		devel/ruby-rcov,${MODRUBY_FLAVOR}>=0.8.1 \
		devel/ruby-flexmock,${MODRUBY_FLAVOR}>=0.8.0 \
		devel/ruby-rspec,${MODRUBY_FLAVOR}>=1.1.1 \
		devel/ruby-debug,${MODRUBY_FLAVOR} \
		textproc/ruby-htmlentities,${MODRUBY_FLAVOR}>=4.0.0 \
		converters/ruby-json,${MODRUBY_FLAVOR}>=1.1.3

#		sysutils/ruby-rails-app-installer,${MODRUBY_FLAVOR}

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
