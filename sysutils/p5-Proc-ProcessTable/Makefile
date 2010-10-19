# $OpenBSD: Makefile,v 1.13 2010/10/19 07:43:01 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	interface to the system's process table

DISTNAME=	Proc-ProcessTable-0.45
PKGNAME=	p5-${DISTNAME}
REVISION=	0
CATEGORIES=	sysutils

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	kvm

MODULES=	cpan
USE_GROFF =	Yes

.include <bsd.port.mk>
