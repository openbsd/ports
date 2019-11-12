# $OpenBSD: Makefile,v 1.17 2019/11/12 06:46:40 jeremy Exp $

COMMENT=	Ruby bindings for libvirt

DISTNAME=	ruby-${PKGNAME}
PKGNAME=	libvirt-0.7.1
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
