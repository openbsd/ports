COMMENT=	Ruby bindings for libvirt

DISTNAME=	ruby-${PKGNAME}
PKGNAME=	libvirt-0.8.2

CATEGORIES=	sysutils

HOMEPAGE=	https://libvirt.org/ruby/

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += c++abi virt virt-lxc virt-qemu

MODULES=	lang/ruby

LIB_DEPENDS=	sysutils/libvirt

CONFIGURE_STYLE=ruby gem ext
CONFIGURE_ARGS=	--with-libvirt-include=${LOCALBASE}/include \
		--with-libvirt-lib=${LOCALBASE}/lib

.include <bsd.port.mk>
