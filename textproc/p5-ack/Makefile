# $OpenBSD: Makefile,v 1.12 2013/03/11 11:42:45 espie Exp $

COMMENT=		grep like tool, aimed at programmers

MODULES=		cpan
DISTNAME=		ack-1.96
CPAN_AUTHOR=		PETDANCE
CATEGORIES=		textproc

MAINTAINER=		Pierre-Yves Ritschard <pyr@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=   Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-File-Next

.include <bsd.port.mk>
