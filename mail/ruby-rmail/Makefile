# $OpenBSD: Makefile,v 1.1.1.1 2007/11/04 16:52:32 bernd Exp $

COMMENT=	Ruby library to create and parse MIME messages

DISTNAME=	rmail-0.17
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	mail

HOMEPAGE=	http://www.lickey.com/rubymail/

MAINTAINER=	Lawrence Teo <lteo.openbsd1@calyptix.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=gems/}

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

do-regress:
	@cd ${WRKBUILD} && ${RUBY} tests/runtests.rb

.include <bsd.port.mk>
