# $OpenBSD: Makefile,v 1.2 2010/10/19 07:54:23 espie Exp $

COMMENT=		measure readability of English text

DISTNAME=		Lingua-EN-Fathom-1.12
CATEGORIES=		textproc

MODULES=		cpan
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::textproc/p5-Lingua-EN-Syllable

.include <bsd.port.mk>
