# $OpenBSD: Makefile,v 1.29 2020/04/16 09:02:47 sthen Exp $

COMMENT=		grep like tool, aimed at programmers

MODULES=		cpan
PKG_ARCH=		*
V=			3.3.1
DISTNAME=		ack-v$V
PKGNAME=		p5-ack-$V
CPAN_AUTHOR=		PETDANCE
CATEGORIES=		textproc

HOMEPAGE =		https://beyondgrep.com/

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		devel/p5-File-Next>=1.16

TEST_DEPENDS +=		devel/p5-IO-Tty \
			shells/bash

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
