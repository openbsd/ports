# $OpenBSD: Makefile,v 1.4 2008/07/26 12:02:14 bernd Exp $

COMMENT=		generic generator framework for Ruby

DISTNAME=		rubigen-1.3.2
PKGNAME=		ruby-${DISTNAME}
CATEGORIES=		textproc

HOMEPAGE=		http://rubigen.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_RUBYFORGE:=rubigen/}

MODULES=		lang/ruby

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::devel/ruby-activesupport

CONFIGURE_STYLE=	ruby gem

PKG_ARCH=		*

.include <bsd.port.mk>
