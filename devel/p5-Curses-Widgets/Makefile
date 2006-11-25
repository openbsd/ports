# $OpenBSD: Makefile,v 1.13 2006/11/25 16:32:34 espie Exp $

COMMENT=	"curses(3) based terminal widgets"

MODULES=	cpan
VERSION=	1.997
DISTNAME=	CursesWidgets-${VERSION}
PKGNAME=	p5-${DISTNAME}p1
CATEGORIES=	devel

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Curses/}

# Artistic 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Curses-*:devel/p5-Curses
BUILD_DEPENDS=	${RUN_DEPENDS}

# Regress tests require an interactive terminal
REGRESS_FLAGS=	${MAKE_FLAGS} TERM=${TERM}
REGRESS_IS_INTERACTIVE=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Curses-Widgets
	${INSTALL_SCRIPT} ${WRKBUILD}/test.pl ${PREFIX}/share/examples/p5-Curses-Widgets/demo.pl

.include <bsd.port.mk>
