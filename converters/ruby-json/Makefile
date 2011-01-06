# $OpenBSD: Makefile,v 1.12 2011/01/06 04:24:22 jeremy Exp $

COMMENT=		JSON implementation for Ruby

DISTNAME=		json-1.4.6
REVISION =		1
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
