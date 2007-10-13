# $OpenBSD: Makefile,v 1.1.1.1 2007/10/13 09:56:15 simon Exp $

COMMENT=	extension for generating XML

MODULES=	cpan
DISTNAME=	XML-Generator-1.01
CATEGORIES=	textproc

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::textproc/p5-XML-DOM
REGRESS_DEPENDS=::devel/p5-Tie-IxHash

.include <bsd.port.mk>
