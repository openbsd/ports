# $OpenBSD: Makefile,v 1.22 2016/03/20 19:57:12 naddy Exp $

COMMENT=		grep like tool, aimed at programmers

MODULES=		cpan
PKG_ARCH=		*
V =			2.15_02
DISTNAME=		ack-${V}
PKGNAME=		p5-${DISTNAME:S/_/./}
CPAN_AUTHOR=		PETDANCE
CATEGORIES=		textproc

HOMEPAGE =		http://beyondgrep.com/

# perl
PERMIT_PACKAGE_CDROM=   Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-File-Next

TEST_DEPENDS +=		devel/p5-IO-Tty \
			shells/bash
.include <bsd.port.mk>
