# $OpenBSD: Makefile,v 1.14 2009/08/09 12:22:02 bernd Exp $

COMMENT=	ruby make

DISTNAME=	rake-0.8.7
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	devel

# MIT License
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

HOMEPAGE=       http://rake.rubyforge.org/

MASTER_SITES=   ${MASTER_SITE_RUBYFORGE:=rake/}

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

REGRESS_DEPENDS=:${PKGNAME}:devel/ruby-rake \
		::devel/ruby-rcov \
		::devel/ruby-flexmock

do-regress:
	@cd ${WRKBUILD} && ${LOCALBASE}/bin/rake test_all

.include <bsd.port.mk>
