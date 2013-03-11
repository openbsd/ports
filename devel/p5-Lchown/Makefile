# $OpenBSD: Makefile,v 1.13 2013/03/11 10:50:18 espie Exp $

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
USE_GROFF =		Yes

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>
