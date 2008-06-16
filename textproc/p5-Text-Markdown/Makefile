# $OpenBSD: Makefile,v 1.4 2008/06/16 20:24:56 simon Exp $

COMMENT=	convert Markdown / MultiMarkdown syntax to (X)HTML

DISTNAME=	Text-Markdown-1.0.19
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

REGRESS_FLAGS=	TEST_POD=Yes \
		TEST_SPELLING=Yes
REGRESS_DEPENDS=::devel/p5-Test-Spelling \
		::textproc/p5-Text-Diff \
		::www/p5-HTML-Tidy

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/script/Markdown.pl ${PREFIX}/bin/Markdown
	${INSTALL_SCRIPT} ${WRKSRC}/script/MultiMarkdown.pl \
		${PREFIX}/bin/MultiMarkdown

.include <bsd.port.mk>
