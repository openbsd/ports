# $OpenBSD: Makefile,v 1.11 2012/08/23 15:50:05 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	calculate Fast Fourier Transforms in perl

MODULES=	cpan
DISTNAME=	Math-FFT-1.28
REVISION=	3
CATEGORIES=	math
USE_GROFF =	Yes

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c

.include <bsd.port.mk>
