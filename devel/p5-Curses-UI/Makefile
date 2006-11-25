# $OpenBSD: Makefile,v 1.5 2006/11/25 16:32:34 espie Exp $

COMMENT=	"curses based user interface framework for Perl"

MODULES=	cpan
DISTNAME=	Curses-UI-0.93
PKGNAME=	p5-${DISTNAME}p0

CATEGORIES=	devel

BUILD_DEPENDS=	::devel/p5-Curses \
		::devel/p5-Term-ReadKey

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
