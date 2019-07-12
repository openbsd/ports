# $OpenBSD: Makefile,v 1.12 2019/07/12 20:43:44 sthen Exp $

COMMENT =		regular expression-based parser for NCBI Entrez Gene

M =			1.10-withoutworldwriteables
DISTNAME =		Bio-ASN1-EntrezGene-${M}
PKGNAME =		p5-Bio-ASN1-EntrezGene-${M:S/-withoutworldwriteables//}
REVISION =		2
EPOCH =			0
CATEGORIES =		biology

# perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*
MODCPAN_EXAMPLES=	Yes

WRKDIST =		${WRKDIR}/Bio-ASN1-EntrezGene-${M:S/-withoutworldwriteables//}

RUN_DEPENDS =		biology/bioperl

.include <bsd.port.mk>
