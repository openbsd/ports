# $OpenBSD: Makefile,v 1.12 2015/07/16 23:57:27 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		filesystem disk space information

DISTNAME=		Filesys-Df-0.92
REVISION=		5
CATEGORIES=		sysutils

# XXX Force dependency on libc; this doesn't actually use libc, but doing
#     this ensures that changes to syscalls alter the package signature.
WANTLIB += c

# Artistic
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		cpan

.include <bsd.port.mk>	
