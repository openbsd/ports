# $OpenBSD: Makefile,v 1.2 2007/01/21 21:46:21 simon Exp $

COMMENT=		"perl, XHTML format for Text::Diff::Unified"

MODULES=		cpan
DISTNAME=		Text-Diff-HTML-0.04
CATEGORIES=		textproc www

# Artistic
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		::www/p5-HTML-Parser \
			::textproc/p5-Text-Diff

BUILD_DEPENDS=		${RUN_DEPENDS}

REGRESS_DEPENDS=	::devel/p5-Test-Pod

.include <bsd.port.mk>	
