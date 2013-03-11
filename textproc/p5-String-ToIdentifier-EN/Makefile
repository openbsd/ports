# $OpenBSD: Makefile,v 1.2 2013/03/11 11:42:44 espie Exp $

COMMENT=	convert strings to english program identifiers

DISTNAME=	String-ToIdentifier-EN-0.06
CATEGORIES=	textproc

MAINTAINER=	Andrew Fresh <andrew@cpan.org>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
CONFIGURE_ARGS=		--skipdeps

RUN_DEPENDS=		textproc/p5-Lingua-EN-Inflect-Phrase \
			textproc/p5-Text-Unidecode \
			devel/p5-namespace-clean

.include <bsd.port.mk>
