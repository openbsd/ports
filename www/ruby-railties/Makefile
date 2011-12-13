# $OpenBSD: Makefile,v 1.4 2011/12/13 18:00:24 jeremy Exp $

COMMENT=	glues the Ruby on Rails framework together

VERSION=	3.1.3
DISTNAME=	railties-${VERSION}
CATEGORIES=	www

# MIT License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	${MODRUBY_RAKE_DEPENDS} \
		devel/ruby-activesupport,${MODRUBY_FLAVOR}=${VERSION} \
		devel/ruby-actionpack,${MODRUBY_FLAVOR}=${VERSION} \
		devel/ruby-rdoc,${MODRUBY_FLAVOR}>=3.4,<4.0 \
		sysutils/ruby-thor,${MODRUBY_FLAVOR}>=0.14.6,<0.15 \
		www/ruby-rack-ssl,${MODRUBY_FLAVOR}>=1.3.2,<1.4

FLAVOR ?=

.if ${FLAVOR} != ruby19
# Ruby 1.9 ships with a gem version of rdoc, so you don't need
# to install the gem.
RUN_DEPENDS+=	devel/ruby-rdoc,${MODRUBY_FLAVOR}>=3.4,<4.0
.endif

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
