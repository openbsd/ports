# $OpenBSD: Makefile,v 1.23 2016/04/01 19:32:48 sthen Exp $

COMMENT =	framework for the Perl SAX2 XML parsers, filters and drivers

DISTNAME =	XML-SAX-0.99

CATEGORIES =	textproc

# Perl (see LICENSE)
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan
PKG_ARCH =	*

RUN_DEPENDS =	textproc/p5-XML-SAX-Base>=1.05 \
		textproc/p5-XML-NamespaceSupport>=0.03

# Install parser template
post-install:
	@${INSTALL_DATA} ${FILESDIR}/ParserDetails.ini \
		${PREFIX}/libdata/perl5/site_perl/XML/SAX/

.include <bsd.port.mk>
