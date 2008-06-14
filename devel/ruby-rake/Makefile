# $OpenBSD: Makefile,v 1.11 2008/06/14 23:46:38 landry Exp $

COMMENT=	ruby make

DISTNAME=	rake-0.8.1
PKGNAME=	ruby-${DISTNAME}p0
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
