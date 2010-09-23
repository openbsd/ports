# $OpenBSD: Makefile,v 1.3 2010/09/23 22:30:25 jeremy Exp $

COMMENT=		abstract methods for Ruby

DISTNAME=		abstract-1.0.0
PKGNAME=		ruby-${DISTNAME}
REVISION=		1
CATEGORIES=		devel

HOMEPAGE=		http://abstract.rubyforge.org/

# Ruby license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_RUBYFORGE:=abstract/}

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

PKG_ARCH=		*

.include <bsd.port.mk>
