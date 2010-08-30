# $OpenBSD: Makefile,v 1.3 2010/08/30 11:01:06 jasper Exp $

COMMENT =		regular expression-based parser for NCBI Entrez Gene

M =			1.10-withoutworldwriteables
DISTNAME =		Bio-ASN1-EntrezGene-${M}
PKGNAME =		p5-Bio-ASN1-EntrezGene-${M:S/-withoutworldwriteables//}
REVISION =		0
CATEGORIES =		biology

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		cpan

WRKDIST =		${WRKDIR}/Bio-ASN1-EntrezGene-${M:S/-withoutworldwriteables//}

RUN_DEPENDS =		::biology/bioperl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Bio-ASN1-EntrezGene/
	${INSTALL_DATA} ${WRKSRC}/examples/* \
		${PREFIX}/share/examples/p5-Bio-ASN1-EntrezGene/

.include <bsd.port.mk>
