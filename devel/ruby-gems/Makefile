# $OpenBSD: Makefile,v 1.11 2007/11/13 17:27:17 bernd Exp $

COMMENT=	package management framework for the Ruby language

V=		0.9.4
DISTNAME=	rubygems-$V
PKGNAME= 	ruby-gems-$Vp2
CATEGORIES=	devel

HOMEPAGE=	http://docs.rubygems.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=rubygems/}
EXTRACT_SUFX=	.tgz

MODULES= 	lang/ruby

CONFIGURE_STYLE=ruby setup

MAKE_ENV=	GEM_HOME=${PREFIX}/lib/ruby/gems/${MODRUBY_REV}

.include <bsd.port.mk>
