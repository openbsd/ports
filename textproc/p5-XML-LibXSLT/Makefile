# $OpenBSD: Makefile,v 1.18 2002/09/13 22:54:28 naddy Exp $

COMMENT=	"fast XSLT module for perl"

VERSION=	1.50
DISTNAME=	XML-LibXSLT-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5

HOMEPAGE=	http://www.axkit.org/

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=XML/}

MAINTAINER=	Shell Hung <shell@openbsd.org>

BUILD_DEPENDS=	:p5-XML-LibXML->=0.94:textproc/p5-XML-LibXML
RUN_DEPENDS=	${BUILD_DEPENDS}
LIB_DEPENDS=	xml2.6::textproc/libxml \
		xslt.1,exslt.7::textproc/libxslt

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
