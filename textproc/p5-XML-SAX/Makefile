# $OpenBSD: Makefile,v 1.22 2016/03/20 19:57:12 naddy Exp $

COMMENT=	perl interface to the SAX2 XML parser

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	XML-SAX-0.96
REVISION=	1
CATEGORIES=	textproc

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	textproc/p5-XML-NamespaceSupport>=0.03

# Install parser template
post-install:
	@${INSTALL_DATA} ${FILESDIR}/ParserDetails.ini	\
		${PREFIX}/libdata/perl5/site_perl/XML/SAX/

.include <bsd.port.mk>
