# $OpenBSD: Makefile,v 1.2 2004/12/31 20:01:15 msf Exp $

BROKEN=		"Cannot inmport dependency due to licensing issues"

COMMENT=	"stemming of words"

DISTNAME=	Lingua-Stem-0.81
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Lingua/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::textproc/p5-Lingua-PT-Stemmer \
		::textproc/p5-Lingua-Stem-Fr \
		::textproc/p5-Lingua-Stem-It \
		::textproc/p5-Lingua-Stem-Ru \
		::textproc/p5-Lingua-Stem-Snowball-Da \
		::textproc/p5-Lingua-Stem-Snowball-No \
		::textproc/p5-Lingua-Stem-Snowball-Se \
		::textproc/p5-Text-German

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
