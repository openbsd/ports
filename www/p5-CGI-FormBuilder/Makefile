# $OpenBSD: Makefile,v 1.1.1.1 2007/02/06 07:02:25 simon Exp $

COMMENT=	"easily generate and process stateful forms"

MODULES=	cpan
DISTNAME=	CGI-FormBuilder-3.05
CATEGORIES=	www
EXTRACT_SUFX=	.tgz

MAINTAINER=	Simon Dassow <simon@openbsd.org>

HOMEPAGE=	http://www.formbuilder.org/

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REGRESS_DEPENDS=::textproc/p5-Template \
		::textproc/p5-Text-Template \
		::www/p5-HTML-Template

.include <bsd.port.mk>
