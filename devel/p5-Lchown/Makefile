# $OpenBSD: Makefile,v 1.16 2015/07/16 23:57:22 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface to the lchown(2) system call

DISTNAME=	Lchown-1.01
REVISION=	4

CATEGORIES=	devel

MAINTAINER=	Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MODULES=		cpan
CPAN_AUTHOR=		NCLEATON

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>
