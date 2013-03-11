# $OpenBSD: Makefile,v 1.8 2013/03/11 11:44:44 espie Exp $

COMMENT=	easily generate and process stateful forms

MODULES=	cpan
DISTNAME=	CGI-FormBuilder-3.0501
REVISION=	0
CATEGORIES=	www
EXTRACT_SUFX=	.tgz
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

HOMEPAGE=	http://www.formbuilder.org/

# Perl
PERMIT_PACKAGE_CDROM=	Yes

TEST_DEPENDS=textproc/p5-Template \
		textproc/p5-Text-Template \
		www/p5-HTML-Template

post-extract:
	@rm -f ${WRKSRC}/lib/CGI/FormBuilder.pm.orig

.include <bsd.port.mk>
