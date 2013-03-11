# $OpenBSD: Makefile,v 1.21 2013/03/11 10:50:15 espie Exp $

COMMENT=	curses(3) based terminal widgets

MODULES=	cpan
VERSION=	1.997
DISTNAME=	CursesWidgets-${VERSION}
REVISION=	3
CATEGORIES=	devel
USE_GROFF =	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Curses/}

# Artistic 
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Curses
BUILD_DEPENDS=	${RUN_DEPENDS}

# Regress tests require an interactive terminal
TEST_FLAGS=	TERM=${TERM}
TEST_IS_INTERACTIVE=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Curses-Widgets
	${INSTALL_SCRIPT} ${WRKBUILD}/test.pl ${PREFIX}/share/examples/p5-Curses-Widgets/demo.pl

.include <bsd.port.mk>
