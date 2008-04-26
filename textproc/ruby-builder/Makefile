# $OpenBSD: Makefile,v 1.5 2008/04/26 10:04:15 bernd Exp $

COMMENT=	Ruby library to create XML markup and data structures

DISTNAME=	builder-2.1.2
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	textproc

# mit
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=builder/}

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

REGRESS_DEPENDS = ::devel/ruby-rake

do-regress:
	@cd ${WRKBUILD} && ${LOCALBASE}/bin/rake test_all

.include <bsd.port.mk>
