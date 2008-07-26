# $OpenBSD: Makefile,v 1.3 2008/07/26 11:13:03 bernd Exp $

SHARED_ONLY=		Yes

COMMENT=		JSON implementation for Ruby

DISTNAME=		json-1.1.3
PKGNAME=		ruby-${DISTNAME}
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

REGRESS_DEPENDS=	:${PKGNAME}:${BASE_PKGPATH}

do-regress:
	@cd ${WRKBUILD} && ${RUBY} -rubygems tests/runner.rb

.include <bsd.port.mk>
