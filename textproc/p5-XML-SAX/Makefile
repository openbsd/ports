# $OpenBSD: Makefile,v 1.6 2002/06/09 05:32:08 wilfried Exp $

COMMENT=	"perl interface to the SAX2 XML Parser"

VERSION=	0.06
DISTNAME=	XML-SAX-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5
NEED_VERSION=	1.504

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=XML/}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-XML-NamespaceSupport->=0.03:textproc/p5-XML-NamespaceSupport
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE= perl

# Install parser template
post-install:
	@${INSTALL_DATA} ${FILESDIR}/ParserDetails.ini	\
		${PREFIX}/libdata/perl5/site_perl/XML/SAX/

.include <bsd.port.mk>
