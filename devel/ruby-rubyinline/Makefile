# $OpenBSD: Makefile,v 1.1.1.1 2008/04/19 18:34:08 bernd Exp $

COMMENT=		embed C/++ external module code in your Ruby script

DISTNAME=		RubyInline-3.6.7
PKGNAME=		ruby-${DISTNAME:L}
CATEGORIES=		devel

HOMEPAGE=		http://www.zenspider.com/ZSS/Products/RubyInline/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_RUBYFORGE:=rubyinline/}

MODULES=		lang/ruby

GEM_SKIPDEPENDS=	hoe

CONFIGURE_STYLE=	ruby gem

REGRESS_DEPENDS=	:${PKGNAME}:${BASE_PKGPATH} \
			::devel/ruby-rake

PKG_ARCH=		*

do-regress:
	@cd ${WRKBUILD} && ${RUBY} -I${WRKBUILD}/lib test/test_inline.rb

.include <bsd.port.mk>
