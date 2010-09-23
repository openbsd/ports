# $OpenBSD: Makefile,v 1.5 2010/09/23 22:30:28 jeremy Exp $

COMMENT=		pragmatic application deployment automation

DISTNAME=		vlad-2.0.0
PKGNAME=		ruby-${DISTNAME}
REVISION =      	0
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
