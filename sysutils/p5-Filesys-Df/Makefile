# $OpenBSD: Makefile,v 1.15 2020/07/03 21:45:43 sthen Exp $

COMMENT=		filesystem disk space information

DISTNAME=		Filesys-Df-0.92
REVISION=		6
CATEGORIES=		sysutils

# XXX Force dependency on libc; this doesn't actually use libc, but doing
#     this ensures that changes to syscalls alter the package signature.
WANTLIB += c perl

# Artistic
PERMIT_PACKAGE=	Yes

MODULES=		cpan

.include <bsd.port.mk>	
