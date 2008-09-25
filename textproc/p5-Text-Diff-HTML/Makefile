# $OpenBSD: Makefile,v 1.4 2008/09/25 21:36:20 jasper Exp $

COMMENT=		XHTML format for Text::Diff::Unified

MODULES=		cpan
DISTNAME=		Text-Diff-HTML-0.05
CATEGORIES=		textproc www

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		::www/p5-HTML-Parser \
			::textproc/p5-Text-Diff

REGRESS_DEPENDS=	::devel/p5-Test-Pod

.include <bsd.port.mk>	
