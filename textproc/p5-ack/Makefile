# $OpenBSD: Makefile,v 1.24 2017/12/11 18:29:28 jasper Exp $

COMMENT=		grep like tool, aimed at programmers

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		ack-2.20
CPAN_AUTHOR=		PETDANCE
CATEGORIES=		textproc

HOMEPAGE =		https://beyondgrep.com/

# perl
PERMIT_PACKAGE_CDROM=   Yes

RUN_DEPENDS=		devel/p5-File-Next>=1.16

TEST_DEPENDS +=		devel/p5-IO-Tty \
			shells/bash
.include <bsd.port.mk>
