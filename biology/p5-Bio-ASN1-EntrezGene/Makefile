# $OpenBSD: Makefile,v 1.9 2013/03/10 23:04:44 espie Exp $

COMMENT =		regular expression-based parser for NCBI Entrez Gene

M =			1.10-withoutworldwriteables
DISTNAME =		Bio-ASN1-EntrezGene-${M}
PKGNAME =		p5-Bio-ASN1-EntrezGene-${M:S/-withoutworldwriteables//}
REVISION =		1
EPOCH =			0
CATEGORIES =		biology

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
MODCPAN_EXAMPLES=	Yes
USE_GROFF =		Yes

WRKDIST =		${WRKDIR}/Bio-ASN1-EntrezGene-${M:S/-withoutworldwriteables//}

RUN_DEPENDS =		biology/bioperl

.include <bsd.port.mk>
