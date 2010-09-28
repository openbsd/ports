# $OpenBSD: Makefile,v 1.8 2010/09/28 20:12:18 jeremy Exp $

COMMENT=		HTML Abstraction Markup Language for Ruby

DISTNAME=		haml-2.2.2
PKGNAME=		ruby-${DISTNAME}
REVISION=		0
CATEGORIES=		textproc

HOMEPAGE=		http://haml.hamptoncatlin.com/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

RUN_DEPENDS=		::textproc/ruby-hpricot

REGRESS_DEPENDS=	::devel/ruby-activesupport \
			::devel/ruby-actionpack \
			::textproc/ruby-hpricot

MODRUBY_REGRESS=	rake

.include <bsd.port.mk>
