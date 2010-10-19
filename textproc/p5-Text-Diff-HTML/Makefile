# $OpenBSD: Makefile,v 1.6 2010/10/19 07:54:24 espie Exp $

COMMENT=		XHTML format for Text::Diff::Unified

MODULES=		cpan
DISTNAME=		Text-Diff-HTML-0.06
CATEGORIES=		textproc www
USE_GROFF =	Yes

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
