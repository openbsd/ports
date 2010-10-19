# $OpenBSD: Makefile,v 1.6 2010/10/19 07:54:24 espie Exp $

COMMENT=		module to diff based on word, not lines

MODULES=		cpan
DISTNAME=		Text-WordDiff-0.05
CATEGORIES=		textproc
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		::devel/p5-Algorithm-Diff \
			::www/p5-HTML-Parser
REGRESS_DEPENDS=	::devel/p5-Test-Pod

.include <bsd.port.mk>	
