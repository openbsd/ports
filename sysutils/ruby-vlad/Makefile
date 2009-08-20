# $OpenBSD: Makefile,v 1.4 2009/08/20 23:31:03 bernd Exp $

COMMENT=		pragmatic application deployment automation

DISTNAME=		vlad-2.0.0
PKGNAME=		ruby-${DISTNAME}
CATEGORIES=		sysutils

HOMEPAGE=		http://rubyhitsquad.com/Vlad_the_Deployer.html

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_RUBYFORGE:=hitsquad/}

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::devel/ruby-rake \
			::devel/ruby-open4 \
			::devel/ruby-hoe

PKG_ARCH=		*

MODRUBY_REGRESS=	rake
REGRESS_DEPENDS=	::devel/ruby-minitest

.include <bsd.port.mk>
