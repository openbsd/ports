# $OpenBSD: Makefile,v 1.6 2010/09/15 13:52:12 sthen Exp $

COMMENT=	stemming of words

MODULES=	cpan
DISTNAME=	Lingua-Stem-0.81
REVISION=	0
CATEGORIES=	textproc

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::textproc/p5-Lingua-PT-Stemmer \
		::textproc/p5-Lingua-Stem-Fr \
		::textproc/p5-Lingua-Stem-It \
		::textproc/p5-Lingua-Stem-Ru \
		::textproc/p5-Lingua-Stem-Snowball-Da \
		::textproc/p5-Lingua-Stem-Snowball-No \
		::textproc/p5-Lingua-Stem-Snowball-Se \
		::textproc/p5-Text-German

.include <bsd.port.mk>
