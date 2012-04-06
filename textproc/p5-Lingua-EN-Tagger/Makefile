# $OpenBSD: Makefile,v 1.1.1.1 2012/04/06 09:26:54 sthen Exp $

COMMENT=	part-of-speech tagger for EN natural language processing

DISTNAME=	Lingua-EN-Tagger-0.16
CATEGORIES=	textproc

MAINTAINER=	Andrew Fresh <andrew@cpan.org>

# GPL3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan

RUN_DEPENDS=		devel/p5-Memoize-ExpireLRU \
			textproc/p5-Lingua-Stem \
			www/p5-HTML-Parser

.include <bsd.port.mk>
