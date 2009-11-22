# $OpenBSD: Makefile,v 1.1.1.1 2009/11/22 06:55:06 msf Exp $

COMMENT =	Ruby implementation of Net::DNS

DISTNAME =	net-dns-0.6.0
PKGNAME =	ruby-${DISTNAME}
CATEGORIES =	net

# Ruby's license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES =	${MASTER_SITE_RUBYFORGE:=net-dns/}

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

MODRUBY_REGRESS = rake

.include <bsd.port.mk>
