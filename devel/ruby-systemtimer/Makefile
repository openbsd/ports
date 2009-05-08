# $OpenBSD: Makefile,v 1.2 2009/05/08 18:04:11 jcs Exp $

COMMENT=	"a ruby timer based on SIGALRM"

DISTNAME=	SystemTimer-1.1.1
PKGNAME=	ruby-${DISTNAME:L}
CATEGORIES=	devel

# ruby or gpl
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=systemtimer/}

MODULES=	lang/ruby

WANTLIB=	c m

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
