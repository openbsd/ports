# $OpenBSD: Makefile,v 1.26 2019/07/12 20:50:09 sthen Exp $

COMMENT =	framework for the Perl SAX2 XML parsers, filters and drivers

DISTNAME =	XML-SAX-1.02

CATEGORIES =	textproc

# Perl (see LICENSE)
PERMIT_PACKAGE =	Yes

MODULES =	cpan
PKG_ARCH =	*

RUN_DEPENDS =	textproc/p5-XML-NamespaceSupport>=0.03 \
		textproc/p5-XML-SAX-Base>=1.05

# Install parser template
post-install:
	@${INSTALL_DATA} ${FILESDIR}/ParserDetails.ini \
		${PREFIX}/libdata/perl5/site_perl/XML/SAX/

.include <bsd.port.mk>
