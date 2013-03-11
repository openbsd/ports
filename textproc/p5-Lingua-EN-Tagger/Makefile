# $OpenBSD: Makefile,v 1.2 2013/03/11 11:42:43 espie Exp $

COMMENT=	part-of-speech tagger for EN natural language processing

DISTNAME=	Lingua-EN-Tagger-0.16
CATEGORIES=	textproc

MAINTAINER=	Andrew Fresh <andrew@cpan.org>

# GPL3
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan

RUN_DEPENDS=		devel/p5-Memoize-ExpireLRU \
			textproc/p5-Lingua-Stem \
			www/p5-HTML-Parser

.include <bsd.port.mk>
