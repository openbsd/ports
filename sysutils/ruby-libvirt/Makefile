# $OpenBSD: Makefile,v 1.4 2013/10/26 23:55:37 jeremy Exp $

COMMENT=	Ruby bindings for libvirt

DISTNAME=	ruby-libvirt-0.4.0
PKGNAME=	${DISTNAME:S/ruby-//}
REVISION =	1
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
