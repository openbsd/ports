# $OpenBSD: Makefile,v 1.5 2008/04/26 10:05:23 bernd Exp $

COMMENT=	HTML templating language for Ruby

DISTNAME=	markaby-0.5
PKGNAME=	ruby-${DISTNAME}p1
CATEGORIES=	textproc devel

HOMEPAGE=	http://code.whytheluckystiff.net/markaby/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=markaby/}

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:ruby-builder->=2.1.1:textproc/ruby-builder

PKG_ARCH=	*

REGRESS_DEPENDS=::devel/ruby-rake

do-regress:
	@cd ${WRKBUILD} && ${LOCALBASE}/bin/rake test

.include <bsd.port.mk>
