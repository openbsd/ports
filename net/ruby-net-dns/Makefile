# $OpenBSD: Makefile,v 1.5 2010/11/24 21:35:15 jeremy Exp $

COMMENT =	Ruby implementation of Net::DNS

DISTNAME =	net-dns-0.6.0
REVISION =	2
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
