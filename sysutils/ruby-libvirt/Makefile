# $OpenBSD: Makefile,v 1.5 2014/01/11 22:51:03 jeremy Exp $

COMMENT=	Ruby bindings for libvirt

DISTNAME=	ruby-libvirt-0.4.0
PKGNAME=	${DISTNAME:S/ruby-//}
REVISION =	2
CATEGORIES=	sysutils

HOMEPAGE=	http://libvirt.org/ruby/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

WANTLIB += c m pthread virt virt-qemu ${MODRUBY_WANTLIB}

LIB_DEPENDS=	sysutils/libvirt

CONFIGURE_STYLE=ruby gem ext

NO_TEST=	Yes

.include <bsd.port.mk>
