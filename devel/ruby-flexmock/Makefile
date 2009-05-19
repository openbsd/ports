# $OpenBSD: Makefile,v 1.8 2009/05/19 22:54:47 bernd Exp $

COMMENT=	simple mock object for unit testing

DISTNAME=	flexmock-0.8.6
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	devel

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=flexmock/}

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

REGRESS_DEPENDS=::devel/ruby-rake

do-regress:
	@cd ${WRKBUILD} && ${LOCALBASE}/bin/rake test_all

.include <bsd.port.mk>
