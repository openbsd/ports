# $OpenBSD: Makefile,v 1.7 2010/09/23 22:30:25 jeremy Exp $

SHARED_ONLY=		Yes

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

MASTER_SITES=		${MASTER_SITE_RUBYFORGE:=json/}

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

WANTLIB=		c m
LIB_DEPENDS=		${MODRUBY_LIB_DEPENDS}

MODRUBY_REGRESS=	rake

.include <bsd.port.mk>
