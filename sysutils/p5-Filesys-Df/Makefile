# $OpenBSD: Makefile,v 1.13 2016/03/20 19:57:02 naddy Exp $

COMMENT=		filesystem disk space information

DISTNAME=		Filesys-Df-0.92
REVISION=		5
CATEGORIES=		sysutils

# XXX Force dependency on libc; this doesn't actually use libc, but doing
#     this ensures that changes to syscalls alter the package signature.
WANTLIB += c perl

# Artistic
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		cpan

.include <bsd.port.mk>	
