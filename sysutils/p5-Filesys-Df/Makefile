# $OpenBSD: Makefile,v 1.9 2013/03/11 11:41:31 espie Exp $

SHARED_ONLY=		Yes

COMMENT=		filesystem disk space information

DISTNAME=		Filesys-Df-0.92
REVISION=		3
CATEGORIES=		sysutils

# XXX Force dependency on libc; this doesn't actually use libc, but doing
#     this ensures that changes to syscalls alter the package signature.
WANTLIB += c

# Artistic
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		cpan
USE_GROFF =		Yes

.include <bsd.port.mk>	
