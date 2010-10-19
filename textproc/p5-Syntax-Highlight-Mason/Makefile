# $OpenBSD: Makefile,v 1.9 2010/10/19 07:54:24 espie Exp $

COMMENT=	syntax highlight for Mason

MODULES=	cpan
DISTNAME=	Syntax-Highlight-Mason-1.21
REVISION=	0
CATEGORIES=	textproc www
EXTRACT_SUFX=	.tgz
USE_GROFF =	Yes

# LGPL/Artistic
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	::www/p5-HTML-Mason \
		::www/p5-HTML-Parser \
		::textproc/p5-Syntax-Highlight-Perl \
		::textproc/p5-Syntax-Highlight-HTML

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

.include <bsd.port.mk>
