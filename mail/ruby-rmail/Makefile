# $OpenBSD: Makefile,v 1.3 2008/06/14 23:53:05 landry Exp $

COMMENT=	Ruby library to create and parse MIME messages

DISTNAME=	rmail-1.0.0
PKGNAME=	ruby-${DISTNAME}p0
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
	@cd ${WRKBUILD} && ${RUBY} test/runtests.rb

.include <bsd.port.mk>
