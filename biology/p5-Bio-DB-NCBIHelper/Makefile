# $OpenBSD: Makefile,v 1.1.1.1 2020/08/25 23:39:36 cwen Exp $

COMMENT =		collection of routines useful for queries to NCBI databases

DISTNAME =		Bio-DB-NCBIHelper-1.7.6

CATEGORIES =		biology

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		biology/p5-Bio-ASN1-EntrezGene \
			biology/bioperl>=1.7.7 \
			devel/p5-Cache-Cache \
			textproc/p5-XML-Twig \
			www/p5-CGI \
			www/p5-HTTP-Message \
			www/p5-LWP-Protocol-https \
			www/p5-URI \
			www/p5-libwww

# XXX tests require network
TEST_DEPENDS =		devel/p5-Test-Exception \
			devel/p5-Test-Most \
			devel/p5-Test-RequiresInternet

PKG_ARCH =		*

.include <bsd.port.mk>
