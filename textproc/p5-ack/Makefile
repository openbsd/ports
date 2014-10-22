# $OpenBSD: Makefile,v 1.17 2014/10/22 14:24:13 jasper Exp $

COMMENT=		grep like tool, aimed at programmers

MODULES=		cpan
DISTNAME=		ack-2.12
REVISION=		0
CPAN_AUTHOR=		PETDANCE
CATEGORIES=		textproc

MAINTAINER=		Pierre-Yves Ritschard <pyr@spootnik.org>
HOMEPAGE =		http://beyondgrep.com/

# perl
PERMIT_PACKAGE_CDROM=   Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-File-Next>=1.1

.include <bsd.port.mk>
