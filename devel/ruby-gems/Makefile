# $OpenBSD: Makefile,v 1.5 2007/05/03 11:28:48 msf Exp $

COMMENT=	"package management framework for the Ruby language"

V=		0.9.0
DISTNAME=	rubygems-$V
PKGNAME= 	ruby-gems-$Vp0
CATEGORIES=	devel

HOMEPAGE=	http://docs.rubygems.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://rubyforge.org/frs/download.php/11289/
EXTRACT_SUFX=	.tgz

MODULES= 	lang/ruby

CONFIGURE_STYLE=ruby setup

MAKE_ENV=	GEM_HOME=${PREFIX}/lib/ruby/gems/${MODRUBY_REV}

.include <bsd.port.mk>
