# $OpenBSD: Makefile,v 1.6 2013/05/20 18:45:40 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		represent and manage a libvirt hypervisor connection

DISTNAME=		Sys-Virt-1.0.5
CATEGORIES=		sysutils

HOMEPAGE=		http://libvirt.org/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan

MODCPAN_EXAMPLES=	Yes

WANTLIB =		virt
LIB_DEPENDS=		sysutils/libvirt>=1.0.0

RUN_DEPENDS=		textproc/p5-XML-XPath

MAKE_ENV+=		LD_PRELOAD="/usr/lib/libpthread.so"

.include <bsd.port.mk>
