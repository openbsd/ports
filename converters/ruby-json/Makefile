# $OpenBSD: Makefile,v 1.9 2010/10/26 21:42:14 jeremy Exp $

COMMENT=		JSON implementation for Ruby

DISTNAME=		json-1.1.7
PKGNAME=		ruby-${DISTNAME}
REVISION =      	0
CATEGORIES=		converters

HOMEPAGE=		http://json.rubyforge.org/

# Ruby license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem ext

MODRUBY_REGRESS=	rake

.include <bsd.port.mk>
