# $OpenBSD: Makefile,v 1.4 2013/03/11 11:41:31 espie Exp $

COMMENT=		represent and manage a libvirt hypervisor connection

DISTNAME=		Sys-Virt-1.0.0
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
