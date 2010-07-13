# $OpenBSD: Makefile,v 1.5 2010/07/13 20:14:23 sthen Exp $

COMMENT=	easily generate and process stateful forms

MODULES=	cpan
DISTNAME=	CGI-FormBuilder-3.0501
REVISION=	0
CATEGORIES=	www
EXTRACT_SUFX=	.tgz

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

HOMEPAGE=	http://www.formbuilder.org/

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REGRESS_DEPENDS=::textproc/p5-Template \
		::textproc/p5-Text-Template \
		::www/p5-HTML-Template

post-extract:
	@rm -f ${WRKSRC}/lib/CGI/FormBuilder.pm.orig

.include <bsd.port.mk>
