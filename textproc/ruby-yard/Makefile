# $OpenBSD: Makefile,v 1.1.1.1 2013/02/02 15:58:55 jasper Exp $

COMMENT=	Ruby documentation tool

DISTNAME=	yard-0.8.3
CATEGORIES=	textproc

HOMEPAGE=	http://yardoc.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

RUN_DEPENDS=	textproc/ruby-redcarpet,${MODRUBY_FLAVOR}
REGRESS_DEPENDS=textproc/ruby-redcarpet,${MODRUBY_FLAVOR} \
		www/ruby-rack,${MODRUBY_FLAVOR}

MODRUBY_REGRESS=rspec

.include <bsd.port.mk>
