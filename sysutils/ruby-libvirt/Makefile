# $OpenBSD: Makefile,v 1.9 2014/08/30 14:16:02 jasper Exp $

COMMENT=	Ruby bindings for libvirt

DISTNAME=	ruby-libvirt-0.5.2
REVISION=	1
PKGNAME=	${DISTNAME:S/ruby-//}
CATEGORIES=	sysutils

HOMEPAGE=	http://libvirt.org/ruby/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

WANTLIB += c m pthread virt virt-qemu ${MODRUBY_WANTLIB}

LIB_DEPENDS=	sysutils/libvirt

CONFIGURE_STYLE=ruby gem ext

.include <bsd.port.mk>
