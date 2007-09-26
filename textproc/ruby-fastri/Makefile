# $OpenBSD: Makefile,v 1.1.1.1 2007/09/26 17:08:13 bernd Exp $

COMMENT=		alternative to ruby ri command-line tool

DISTNAME=		fastri-0.3.0.1
PKGNAME=		ruby-${DISTNAME}
CATEGORIES=		textproc ruby

HOMEPAGE=		http://rubyforge.org/projects/fastri/

# Ruby license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_RUBYFORGE:=fastri/}

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

PKG_ARCH=		*

.include <bsd.port.mk>
