# $OpenBSD: Makefile,v 1.16 2010/07/13 20:14:23 sthen Exp $

COMMENT=	perl interface to the SAX2 XML parser

MODULES=	cpan
DISTNAME=	XML-SAX-0.96
REVISION=	0
CATEGORIES=	textproc

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-XML-NamespaceSupport->=0.03:textproc/p5-XML-NamespaceSupport

# Install parser template
post-install:
	@${INSTALL_DATA} ${FILESDIR}/ParserDetails.ini	\
		${PREFIX}/libdata/perl5/site_perl/XML/SAX/

.include <bsd.port.mk>
