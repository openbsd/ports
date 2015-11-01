# $OpenBSD: Makefile,v 1.18 2015/11/01 11:19:11 ajacoutot Exp $

COMMENT=		grep like tool, aimed at programmers

MODULES=		cpan
V=			2.15_01
DISTNAME=		ack-${V}
PKGNAME=		p5-${DISTNAME:S/_/./}
CPAN_AUTHOR=		PETDANCE
CATEGORIES=		textproc

MAINTAINER=		Pierre-Yves Ritschard <pyr@spootnik.org>
HOMEPAGE =		http://beyondgrep.com/

# perl
PERMIT_PACKAGE_CDROM=   Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-File-Next

# IO::Pty for TEST_DEPENDS -- not ported yet

.include <bsd.port.mk>
