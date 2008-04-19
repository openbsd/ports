# $OpenBSD: Makefile,v 1.1.1.1 2008/04/19 19:11:21 bernd Exp $

COMMENT=		HTML Abstraction Markup Language for Ruby

DISTNAME=		haml-1.8.2
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

REGRESS_DEPENDS=	::devel/ruby-activesupport \
			::devel/ruby-actionpack \
			::textproc/ruby-redcloth \
			::textproc/ruby-bluecloth \
			::devel/ruby-rake \
			::textproc/ruby-hpricot

do-regress:
	@cd ${WRKBUILD} && ${LOCALBASE}/bin/rake test

.include <bsd.port.mk>
