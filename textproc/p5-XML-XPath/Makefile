# $OpenBSD: Makefile,v 1.7 2002/03/21 21:25:53 espie Exp $

COMMENT=	"modules for parsing and evaluating XPath statements"

DISTNAME=	XML-XPath-1.08
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5
NEED_VERSION=	1.515
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= XML

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERL_MODULES=   ${LOCALBASE}/libdata/perl5/site_perl/${MACHINE_ARCH}-openbsd
BUILD_DEPENDS=  ::textproc/p5-XML-Parser
RUN_DEPENDS=    ${BUILD_DEPENDS}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
