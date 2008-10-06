# $OpenBSD: Makefile,v 1.9 2008/10/06 16:50:49 jasper Exp $

COMMENT=	curses based user interface framework for Perl

MODULES=	cpan
DISTNAME=	Curses-UI-0.9605

CATEGORIES=	devel

RUN_DEPENDS=	::devel/p5-Curses \
		::devel/p5-Term-ReadKey
BUILD_DEPENDS=	${RUN_DEPENDS} \
		::devel/p5-Test-Pod

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV=	TEST_POD=Yes

EXAMPLE_DIR=	${PREFIX}/share/examples/p5-Curses-UI

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLE_DIR}
	${INSTALL_DATA} ${WRKSRC}/examples/* ${EXAMPLE_DIR}

.include <bsd.port.mk>
