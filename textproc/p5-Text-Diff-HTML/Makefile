# $OpenBSD: Makefile,v 1.1.1.1 2006/04/18 16:03:21 espie Exp $

COMMENT=		"perl, XHTML format for Text::Diff::Unified"

PKG_ARCH=		*
DISTNAME=		Text-Diff-HTML-0.04
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		textproc perl5 www

# Artistic
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Text/}

CONFIGURE_STYLE=	perl modbuild

DEP=			::www/p5-HTML-Parser \
			::textproc/p5-Text-Diff

BUILD_DEPENDS=		$(DEP)
RUN_DEPENDS=		$(DEP)

REGRESS_DEPENDS=	::devel/p5-Test-Pod \
			$(DEP)

.include <bsd.port.mk>	
