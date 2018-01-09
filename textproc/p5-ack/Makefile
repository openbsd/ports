# $OpenBSD: Makefile,v 1.25 2018/01/09 00:31:05 bluhm Exp $

COMMENT=		grep like tool, aimed at programmers

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		ack-2.22
CPAN_AUTHOR=		PETDANCE
CATEGORIES=		textproc

HOMEPAGE =		https://beyondgrep.com/

# perl
PERMIT_PACKAGE_CDROM=   Yes

RUN_DEPENDS=		devel/p5-File-Next>=1.16

TEST_DEPENDS +=		devel/p5-IO-Tty \
			shells/bash
.include <bsd.port.mk>
