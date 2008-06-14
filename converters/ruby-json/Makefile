# $OpenBSD: Makefile,v 1.2 2008/06/14 23:41:32 landry Exp $

SHARED_ONLY=		Yes

COMMENT=		JSON implementation for Ruby

DISTNAME=		json-1.1.2
PKGNAME=		ruby-${DISTNAME}p0
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
LIB_DEPENDS=		ruby::lang/ruby

REGRESS_DEPENDS=	::converters/ruby-json

do-regress:
	@cd ${WRKBUILD} && ${RUBY} -rubygems tests/runner.rb

.include <bsd.port.mk>
