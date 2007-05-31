# $OpenBSD: Makefile,v 1.1.1.1 2007/05/31 03:59:20 jcs Exp $

COMMENT=	"pure-ruby implementation of the SFTP client protocol"

DISTNAME=	net-sftp-1.1.0
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	net

# bsd/ruby
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MASTER_SITES=	http://rubyforge.org/frs/download.php/7928/

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:ruby-net-ssh-1.1.1:net/ruby-net-ssh

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
