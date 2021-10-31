# $OpenBSD: Makefile,v 1.5 2021/10/31 12:09:46 bentley Exp $

L =	es-ast
LANG =	Spanish/Asturian
V =	1.1.0
REVISION =	2

MASTER_SITES =	https://apertium.org/releases/apertium-$L/

DISTNAME =	apertium-es-ast_NO-PN-$V
PKGNAME =	apertium-es-ast-$V
WRKDIST =	${WRKDIR}/apertium-es-ast-$V

pre-install:
	mkdir -p ${PREFIX}/share/apertium/modes

.include <bsd.port.mk>
