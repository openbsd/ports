# $OpenBSD: Makefile,v 1.2 2010/09/23 22:30:28 jeremy Exp $

COMMENT =	Ruby implementation of Net::DNS

DISTNAME =	net-dns-0.6.0
PKGNAME =	ruby-${DISTNAME}
REVISION =      0
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
