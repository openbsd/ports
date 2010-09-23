# $OpenBSD: Makefile,v 1.3 2010/09/23 22:30:26 jeremy Exp $

COMMENT=	open processes with handles on pid, stdin, stdout, stderr

DISTNAME=	open4-0.9.6
PKGNAME=	ruby-${DISTNAME}
REVISION=	1
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
