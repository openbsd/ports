# $OpenBSD: Makefile,v 1.2 2013/01/09 17:38:52 jeremy Exp $

COMMENT=	Ruby bindings for libvirt

DISTNAME=	ruby-libvirt-0.4.0
PKGNAME=	${DISTNAME:S/ruby-//}
REVISION =	0
CATEGORIES=	sysutils

HOMEPAGE=	http://libvirt.org/ruby/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

WANTLIB += c m pthread virt virt-qemu ${MODRUBY_WANTLIB}

LIB_DEPENDS=	sysutils/libvirt

CONFIGURE_STYLE=ruby gem ext

NO_REGRESS=	Yes

.include <bsd.port.mk>
