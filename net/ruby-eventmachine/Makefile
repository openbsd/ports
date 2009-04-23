# $OpenBSD: Makefile,v 1.2 2009/04/23 07:22:03 jcs Exp $

COMMENT=	"event-driven I/O for Ruby using the Reactor pattern"

DISTNAME=	eventmachine-0.12.6
PKGNAME=	ruby-${DISTNAME}p0
CATEGORIES=	net devel

HOMEPAGE=	http://rubyeventmachine.com/

# ruby or gpl2
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=eventmachine/}

MODULES=	lang/ruby

WANTLIB=	c crypto m ssl stdc++

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
