# $OpenBSD: Makefile,v 1.6 2010/09/28 20:12:18 jeremy Exp $

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
