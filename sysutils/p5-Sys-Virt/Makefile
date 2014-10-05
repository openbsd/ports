# $OpenBSD: Makefile,v 1.14 2014/10/05 17:32:33 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		represent and manage a libvirt hypervisor connection

V=			1.2.9
DISTNAME=		Sys-Virt-$V
REVISION=		0
CATEGORIES=		sysutils

HOMEPAGE=		http://libvirt.org/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan

MODCPAN_EXAMPLES=	Yes

WANTLIB =		virt
LIB_DEPENDS=		sysutils/libvirt>=$V

RUN_DEPENDS=		textproc/p5-XML-XPath

MAKE_ENV+=		LD_PRELOAD="/usr/lib/libpthread.so" TEST_POD=1

.include <bsd.port.mk>
