# $OpenBSD: Makefile,v 1.14 2002/05/14 12:07:10 naddy Exp $

COMMENT=	"fast XSLT module for perl"

VERSION=	1.31
DISTNAME=	XML-LibXSLT-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5
NEED_VERSION=	1.504

HOMEPAGE=	http://www.axkit.org/

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=XML/}

MAINTAINER=	Shell Hung <shell@openbsd.org>

BUILD_DEPENDS=	::textproc/p5-XML-LibXML
RUN_DPENDS=	${BUILD_DEPENDS}
LIB_DEPENDS=	xml2.6::textproc/libxml \
		xslt::textproc/libxslt

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
