# $OpenBSD: Makefile,v 1.24 2019/03/09 23:47:54 afresh1 Exp $

COMMENT =	framework for the Perl SAX2 XML parsers, filters and drivers

DISTNAME =	XML-SAX-1.00

CATEGORIES =	textproc

# Perl (see LICENSE)
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan
PKG_ARCH =	*

RUN_DEPENDS =	textproc/p5-XML-NamespaceSupport>=0.03 \
		textproc/p5-XML-SAX-Base>=1.05

# Install parser template
post-install:
	@${INSTALL_DATA} ${FILESDIR}/ParserDetails.ini \
		${PREFIX}/libdata/perl5/site_perl/XML/SAX/

.include <bsd.port.mk>
