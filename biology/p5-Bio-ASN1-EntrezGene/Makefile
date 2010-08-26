# $OpenBSD: Makefile,v 1.2 2010/08/26 13:35:24 jasper Exp $

COMMENT =		regular expression-based parser for NCBI Entrez Gene

M =			1.10-withoutworldwriteables
DISTNAME =		Bio-ASN1-EntrezGene-${M}
PKGNAME =		p5-Bio-ASN1-EntrezGene-${M:S/-withoutworldwriteables//}
CATEGORIES =		biology

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		cpan

WRKDIST =		${WRKDIR}/Bio-ASN1-EntrezGene-${M:S/-withoutworldwriteables//}

RUN_DEPENDS =		::biology/bioperl

.include <bsd.port.mk>
