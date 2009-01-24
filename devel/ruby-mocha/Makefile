# $OpenBSD: Makefile,v 1.5 2009/01/24 17:52:35 bernd Exp $

COMMENT=	Ruby library for mocking and stubbing

DISTNAME=	mocha-0.9.4
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=     devel

HOMEPAGE=	http://mocha.rubyforge.org/

# MIT License
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=mocha/}

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/ruby-rake

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

do-regress:
	@cd ${WRKBUILD} && ${LOCALBASE}/bin/rake test:acceptance test:units

.include <bsd.port.mk>
