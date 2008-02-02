# $OpenBSD: Makefile,v 1.1.1.1 2008/02/02 11:08:45 bernd Exp $

COMMENT=	ruby library for mocking and stubbing

DISTNAME=	mocha-0.5.6
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
	@cd ${WRKBUILD} && ${LOCALBASE}/bin/rake test_all

.include <bsd.port.mk>
