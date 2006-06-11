# $OpenBSD: Makefile,v 1.1.1.1 2006/06/11 19:11:07 sturm Exp $

COMMENT=	"package management framework for the Ruby language"

V=		0.8.11
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

MASTER_SITES=	http://rubyforge.org/frs/download.php/5207/
EXTRACT_SUFX=	.tgz

MODULES= 	lang/ruby

CONFIGURE_STYLE=ruby setup

MAKE_ENV=	GEM_HOME=${PREFIX}/lib/ruby/gems/${REV}

.include <bsd.port.mk>
