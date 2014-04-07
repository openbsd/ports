# $OpenBSD: Makefile,v 1.10 2014/04/07 14:51:25 sthen Exp $

COMMENT =		regular expression-based parser for NCBI Entrez Gene

M =			1.10-withoutworldwriteables
DISTNAME =		Bio-ASN1-EntrezGene-${M}
PKGNAME =		p5-Bio-ASN1-EntrezGene-${M:S/-withoutworldwriteables//}
REVISION =		2
EPOCH =			0
CATEGORIES =		biology

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
MODCPAN_EXAMPLES=	Yes

WRKDIST =		${WRKDIR}/Bio-ASN1-EntrezGene-${M:S/-withoutworldwriteables//}

RUN_DEPENDS =		biology/bioperl

.include <bsd.port.mk>
