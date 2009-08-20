# $OpenBSD: Makefile,v 1.6 2009/08/20 23:10:25 bernd Exp $

COMMENT=		HTML Abstraction Markup Language for Ruby

DISTNAME=		haml-2.2.2
PKGNAME=		ruby-${DISTNAME}
CATEGORIES=		textproc

HOMEPAGE=		http://haml.hamptoncatlin.com/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_RUBYFORGE:=haml/}

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

RUN_DEPENDS=		::textproc/ruby-hpricot

REGRESS_DEPENDS=	::devel/ruby-activesupport \
			::devel/ruby-actionpack \
			::textproc/ruby-hpricot

MODRUBY_REGRESS=	rake

.include <bsd.port.mk>
