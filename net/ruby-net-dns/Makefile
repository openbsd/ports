# $OpenBSD: Makefile,v 1.3 2010/09/28 20:12:18 jeremy Exp $

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

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

MODRUBY_REGRESS = rake

.include <bsd.port.mk>
