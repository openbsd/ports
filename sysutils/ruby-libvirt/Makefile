# $OpenBSD: Makefile,v 1.16 2019/07/12 20:49:50 sthen Exp $

COMMENT=	Ruby bindings for libvirt

DISTNAME=	ruby-${PKGNAME}
PKGNAME=	libvirt-0.7.0
REVISION =	0
CATEGORIES=	sysutils

HOMEPAGE=	https://libvirt.org/ruby/

# LGPLv2.1
PERMIT_PACKAGE=	Yes

MODULES=	lang/ruby

WANTLIB += c m pthread virt virt-lxc virt-qemu ${MODRUBY_WANTLIB}

LIB_DEPENDS=	sysutils/libvirt

CONFIGURE_STYLE=ruby gem ext
CONFIGURE_ARGS=	--with-libvirt-include=${LOCALBASE}/include \
		--with-libvirt-lib=${LOCALBASE}/lib

.include <bsd.port.mk>
