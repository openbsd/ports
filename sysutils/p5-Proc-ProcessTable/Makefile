# $OpenBSD: Makefile,v 1.15 2012/01/08 19:42:02 naddy Exp $

SHARED_ONLY=	Yes

COMMENT=	interface to the system's process table

DISTNAME=	Proc-ProcessTable-0.45
PKGNAME=	p5-${DISTNAME}
REVISION=	2
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
