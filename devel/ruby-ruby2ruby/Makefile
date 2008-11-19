# $OpenBSD: Makefile,v 1.4 2008/11/19 14:34:55 pirofti Exp $

COMMENT=	generating pure Ruby code easily from ParseTree's Sexps

DISTNAME=	ruby2ruby-1.2.1
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	devel

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_RUBYFORGE:=seattlerb/}

MODULES=		lang/ruby

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::devel/ruby-parsetree

GEM_SKIPDEPENDS=	hoe

CONFIGURE_STYLE=	ruby gem

do-regress:
	@cd ${WRKBUILD} && ${RUBY} -Ilib test/test_ruby2ruby.rb

.include <bsd.port.mk>
