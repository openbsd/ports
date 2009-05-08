# $OpenBSD: Makefile,v 1.1.1.1 2009/05/08 17:58:52 jcs Exp $

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

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
