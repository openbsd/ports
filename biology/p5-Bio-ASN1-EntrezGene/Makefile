# $OpenBSD: Makefile,v 1.1.1.1 2008/09/24 13:36:21 jasper Exp $

COMMENT =		regular expression-based parser for NCBI Entrez Gene

M =			1.09
DISTNAME =		Bio-ASN1-EntrezGene-$M1
CATEGORIES =		biology

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		cpan
EXTRACT_SUFX =		.tgz

WRKDIST =		${WRKDIR}/Bio-ASN1-EntrezGene-$M

RUN_DEPENDS =		::biology/bioperl

.include <bsd.port.mk>
