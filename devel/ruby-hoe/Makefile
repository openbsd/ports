# $OpenBSD: Makefile,v 1.17 2011/03/25 16:44:06 jeremy Exp $

COMMENT=	simple rake/rubygems helper for project Rakefiles

DISTNAME=	hoe-2.8.0
CATEGORIES=	devel

# mit
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	${MODRUBY_RAKE_DEPENDS}

CONFIGURE_STYLE=ruby gem

REGRESS_DEPENDS =	devel/ruby-minitest,${MODRUBY_FLAVOR}
do-regress:
	cd ${WRKSRC} && ${RUBY} -Ilib -rubygems test/test_hoe.rb

.include <bsd.port.mk>
