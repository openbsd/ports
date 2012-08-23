# $OpenBSD: Makefile,v 1.17 2012/08/23 15:52:47 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	interface to the system's process table

DISTNAME=	Proc-ProcessTable-0.45
PKGNAME=	p5-${DISTNAME}
REVISION=	4
CATEGORIES=	sysutils

MAINTAINER=	William Yodlowsky <william@openbsd.org>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c kvm

MODULES=	cpan
USE_GROFF =	Yes

.include <bsd.port.mk>
