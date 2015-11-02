# $OpenBSD: Makefile,v 1.20 2015/11/02 10:47:41 nigel Exp $

COMMENT=		grep like tool, aimed at programmers

MODULES=		cpan
V=			2.15_01
DISTNAME=		ack-${V}
PKGNAME=		p5-${DISTNAME:S/_/./}
CPAN_AUTHOR=		PETDANCE
CATEGORIES=		textproc
REVISION=		0

HOMEPAGE =		http://beyondgrep.com/

# perl
PERMIT_PACKAGE_CDROM=   Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-File-Next

TEST_DEPENDS +=		devel/p5-IO-Tty \
			shells/bash
.include <bsd.port.mk>
