# $OpenBSD: Makefile,v 1.11 2010/11/24 21:35:13 jeremy Exp $

COMMENT=		JSON implementation for Ruby

DISTNAME=		json-1.4.6
REVISION =		0
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
