# $OpenBSD: Makefile,v 1.31 2022/02/16 10:52:34 sthen Exp $

COMMENT=	grep like tool, aimed at programmers

PORTROACH=	limit:v?[3-9].*
MODULES=	cpan
PKG_ARCH=	*
V=		3.5.0
DISTNAME=	ack-v$V
PKGNAME=	p5-ack-$V
CPAN_AUTHOR=	PETDANCE
CATEGORIES=	textproc

HOMEPAGE=	https://beyondgrep.com/

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-File-Next

TEST_DEPENDS=	devel/p5-IO-Tty \
		shells/bash

PORTHOME=	${WRKDIR}

.include <bsd.port.mk>
