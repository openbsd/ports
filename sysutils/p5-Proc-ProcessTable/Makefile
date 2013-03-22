# $OpenBSD: Makefile,v 1.19 2013/03/22 14:21:49 benoit Exp $

SHARED_ONLY=	Yes

COMMENT=	interface to the system's process table

DISTNAME=	Proc-ProcessTable-0.47
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	sysutils

MAINTAINER=	William Yodlowsky <william@openbsd.org>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c kvm

MODULES=	cpan

.include <bsd.port.mk>
