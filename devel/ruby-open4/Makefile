# $OpenBSD: Makefile,v 1.1.1.1 2008/02/07 21:04:40 bernd Exp $

COMMENT=	open processes with handles on pid, stdin, stdout, stderr

DISTNAME=	open4-0.9.6
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	devel

# Ruby license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_RUBYFORGE:=codeforpeople/}

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

PKG_ARCH=		*

.include <bsd.port.mk>
