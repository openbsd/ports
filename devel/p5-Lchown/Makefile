# $OpenBSD: Makefile,v 1.14 2013/10/11 23:48:55 naddy Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface to the lchown(2) system call

DISTNAME=	Lchown-1.01
REVISION=	2

CATEGORIES=	devel

MAINTAINER=	Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MODULES=		cpan
CPAN_AUTHOR=		NCLEATON

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>
