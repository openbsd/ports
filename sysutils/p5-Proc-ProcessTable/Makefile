# $OpenBSD: Makefile,v 1.18 2013/03/11 11:41:31 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	interface to the system's process table

DISTNAME=	Proc-ProcessTable-0.45
PKGNAME=	p5-${DISTNAME}
REVISION=	4
CATEGORIES=	sysutils

MAINTAINER=	William Yodlowsky <william@openbsd.org>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c kvm

MODULES=	cpan
USE_GROFF =	Yes

.include <bsd.port.mk>
