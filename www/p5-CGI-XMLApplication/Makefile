# $OpenBSD: Makefile,v 1.2 2001/07/25 11:10:24 shell Exp $


COMMENT=		"object oriented interface for CGI script applications"

DISTNAME=		CGI-XMLApplication-0.8.1
PKGNAME=		p5-${DISTNAME}
CATEGORIES=     	www
NEED_VERSION=		1.427

MAINTAINER=		Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=	CGI

PERL_MODULE=	${LOCALBASE}/libdata/perl5/site_perl/${MACHINE_ARCH}-openbsd
BUILD_DEPENDS=	${PERL_MODULE}/XML/LibXSLT.pm::textproc/p5-XML-LibXSLT
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
