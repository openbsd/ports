# $OpenBSD: Makefile,v 1.3 2006/10/30 07:28:21 sturm Exp $

COMMENT=	"package management framework for the Ruby language"

V=		0.9.0
DISTNAME=	rubygems-$V
PKGNAME= 	ruby-gems-$V
CATEGORIES=	devel

HOMEPAGE=	http://docs.rubygems.org/

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org> 

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
