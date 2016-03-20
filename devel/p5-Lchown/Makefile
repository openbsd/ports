# $OpenBSD: Makefile,v 1.17 2016/03/20 19:56:26 naddy Exp $

COMMENT=	perl interface to the lchown(2) system call

DISTNAME=	Lchown-1.01
REVISION=	4

CATEGORIES=	devel

MAINTAINER=	Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c perl

MODULES=		cpan
CPAN_AUTHOR=		NCLEATON

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>
