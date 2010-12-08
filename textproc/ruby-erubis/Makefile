# $OpenBSD: Makefile,v 1.12 2010/12/08 21:48:23 jeremy Exp $

COMMENT=		pure Ruby implementation of eRuby

DISTNAME=		erubis-2.6.6
CATEGORIES=		textproc

HOMEPAGE=		http://www.kuwata-lab.com/erubis/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/ruby-abstract,${MODRUBY_FLAVOR}

REGRESS_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH}

do-regress:
	@cd ${WRKBUILD} && ${SETENV} RUBYOPT="-rubygems" ${RUBY} test/test.rb

.include <bsd.port.mk>
