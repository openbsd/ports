# $OpenBSD: Makefile,v 1.4 2001/04/09 23:25:30 avsm Exp $

COMMENT=	"modules for parsing and evaluating XPath statements"

DISTNAME=	XML-XPath-1.08
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5
NEED_VERSION=	1.391
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= XML

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERL_MODULES=   ${LOCALBASE}/libdata/perl5/site_perl/${ARCH}-openbsd
BUILD_DEPENDS=  ${PERL_MODULES}/XML/Parser.pm::textproc/p5-XML-Parser
RUN_DEPENDS=    ${BUILD_DEPENDS}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
