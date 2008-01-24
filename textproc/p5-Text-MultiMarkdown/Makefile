# $OpenBSD: Makefile,v 1.1.1.1 2008/01/24 04:53:55 okan Exp $

COMMENT=	convert MultiMarkdown syntax to (X)HTML

DISTNAME=	Text-MultiMarkdown-1.0.10
CATEGORIES=	textproc www
MODULES=	cpan

MAINTAINER=	Okan Demirmen <okan@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-File-Slurp \
		::devel/p5-List-MoreUtils \
		::devel/p5-Test-Exception
BUILD_DEPENDS=	${RUN_DEPENDS}

REGRESS_DEPENDS=::devel/p5-Test-Spelling \
		::textproc/aspell/core \
		::textproc/p5-Text-Diff

MAKE_ENV=	TEST_POD=Yes \
		TEST_SPELLING=Yes

.include <bsd.port.mk>
