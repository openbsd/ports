# $OpenBSD: Makefile,v 1.18 2004/01/17 15:58:10 naddy Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"perl interface to the libxml2 library"

VERSION=	1.54
DISTNAME=	XML-LibXML-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=XML/}

MAINTAINER=	Shell Hung <shell@openbsd.org>

LIB_DEPENDS=	xml2.6::textproc/libxml
RUN_DEPENDS=	::textproc/p5-LibXML-Common \
		:p5-XML-SAX-*:textproc/p5-XML-SAX
BUILD_DEPENDS=	${RUN_DEPENDS}

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
