# $OpenBSD: Makefile,v 1.13 2013/04/22 19:38:40 landry Exp $

COMMENT=		grep like tool, aimed at programmers

MODULES=		cpan
DISTNAME=		ack-2.02
CPAN_AUTHOR=		PETDANCE
CATEGORIES=		textproc

MAINTAINER=		Pierre-Yves Ritschard <pyr@openbsd.org>
HOMEPAGE =		http://beyondgrep.com/

# perl
PERMIT_PACKAGE_CDROM=   Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-File-Next>=1.1

.include <bsd.port.mk>
