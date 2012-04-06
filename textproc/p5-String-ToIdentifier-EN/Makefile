# $OpenBSD: Makefile,v 1.1.1.1 2012/04/06 09:27:49 sthen Exp $

COMMENT=	convert strings to english program identifiers

DISTNAME=	String-ToIdentifier-EN-0.06
CATEGORIES=	textproc

MAINTAINER=	Andrew Fresh <andrew@cpan.org>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan
CONFIGURE_ARGS=		--skipdeps

RUN_DEPENDS=		textproc/p5-Lingua-EN-Inflect-Phrase \
			textproc/p5-Text-Unidecode \
			devel/p5-namespace-clean

.include <bsd.port.mk>
