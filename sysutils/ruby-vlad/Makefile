# $OpenBSD: Makefile,v 1.1.1.1 2008/02/07 21:14:39 bernd Exp $

COMMENT=		pragmatic application deployment automation

DISTNAME=		vlad-1.2.0
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
			::devel/ruby-open4

GEM_SKIPDEPENDS=	hoe

PKG_ARCH=		*

.include <bsd.port.mk>
