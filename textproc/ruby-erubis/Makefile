# $OpenBSD: Makefile,v 1.1.1.1 2008/04/19 17:01:45 bernd Exp $

COMMENT=		pure Ruby implementation of eRuby

DISTNAME=		erubis-2.5.0
PKGNAME=		ruby-${DISTNAME}
CATEGORIES=		textproc

HOMEPAGE=		http://www.kuwata-lab.com/erubis/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_RUBYFORGE:=erubis/}

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::devel/ruby-abstract

PKG_ARCH=		*

.include <bsd.port.mk>
