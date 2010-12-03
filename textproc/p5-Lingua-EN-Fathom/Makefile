# $OpenBSD: Makefile,v 1.4 2010/12/03 11:46:48 ajacoutot Exp $

COMMENT=		measure readability of English text

DISTNAME=		Lingua-EN-Fathom-1.12
REVISION=		0
CATEGORIES=		textproc

MODULES=		cpan
USE_GROFF =		Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		textproc/p5-Lingua-EN-Syllable

.include <bsd.port.mk>
