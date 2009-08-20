# $OpenBSD: Makefile,v 1.6 2009/08/20 22:15:47 bernd Exp $

COMMENT=		pure Ruby implementation of eRuby

DISTNAME=		erubis-2.6.5
PKGNAME=		ruby-${DISTNAME}
CATEGORIES=		textproc

HOMEPAGE=		http://www.kuwata-lab.com/erubis/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_RUBYFORGE:=erubis/}

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::devel/ruby-abstract

PKG_ARCH=		*

REGRESS_DEPENDS=	::${BASE_PKGPATH}

do-regress:
	@cd ${WRKBUILD} && ${SETENV} RUBYOPT="-rubygems" ${RUBY} test/test.rb

.include <bsd.port.mk>
