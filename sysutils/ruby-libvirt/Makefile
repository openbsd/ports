# $OpenBSD: Makefile,v 1.13 2016/10/15 19:14:20 jasper Exp $

COMMENT=	Ruby bindings for libvirt

DISTNAME=	ruby-libvirt-0.6.0
PKGNAME=	${DISTNAME:S/ruby-//}
REVISION=	0
CATEGORIES=	sysutils

HOMEPAGE=	https://libvirt.org/ruby/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

WANTLIB += c m pthread virt virt-lxc virt-qemu ${MODRUBY_WANTLIB}

LIB_DEPENDS=	sysutils/libvirt

CONFIGURE_STYLE=ruby gem ext

.include <bsd.port.mk>
