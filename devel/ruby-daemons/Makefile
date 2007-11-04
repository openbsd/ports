# $OpenBSD: Makefile,v 1.6 2007/11/04 14:34:08 bernd Exp $

COMMENT=	wrap existing Ruby scripts to be run as a daemon

DISTNAME=	daemons-1.0.9
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	devel

# Ruby license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=daemons/}

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
