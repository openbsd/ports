# $OpenBSD: Makefile,v 1.18 2019/07/12 20:44:58 sthen Exp $

COMMENT=	perl interface to the lchown(2) system call

DISTNAME=	Lchown-1.01
REVISION=	4

CATEGORIES=	devel

MAINTAINER=	Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE=	Yes

WANTLIB += c perl

MODULES=		cpan
CPAN_AUTHOR=		NCLEATON

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>
