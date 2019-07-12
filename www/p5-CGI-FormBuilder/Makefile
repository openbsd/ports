# $OpenBSD: Makefile,v 1.13 2019/07/12 20:50:50 sthen Exp $

COMMENT=	easily generate and process stateful forms

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	CGI-FormBuilder-3.0501
REVISION=	1
CATEGORIES=	www
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://www.formbuilder.org/

# Perl
PERMIT_PACKAGE=	Yes

TEST_DEPENDS=textproc/p5-Template \
		textproc/p5-Text-Template \
		www/p5-HTML-Template

post-extract:
	rm ${WRKSRC}/lib/CGI/FormBuilder.pm.orig

.include <bsd.port.mk>
