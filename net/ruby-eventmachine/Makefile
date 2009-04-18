# $OpenBSD: Makefile,v 1.1.1.1 2009/04/18 19:34:34 jcs Exp $

COMMENT=	"event-driven I/O for Ruby using the Reactor pattern"

DISTNAME=	eventmachine-0.12.6
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	net devel

HOMEPAGE=	http://rubyeventmachine.com/

# ruby or gpl2
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=eventmachine/}

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
