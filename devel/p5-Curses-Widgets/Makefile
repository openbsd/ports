# $OpenBSD: Makefile,v 1.19 2010/11/15 19:46:02 espie Exp $

COMMENT=	curses(3) based terminal widgets

MODULES=	cpan
VERSION=	1.997
DISTNAME=	CursesWidgets-${VERSION}
REVISION=	2
CATEGORIES=	devel
USE_GROFF =	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Curses/}

# Artistic 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-Curses
BUILD_DEPENDS=	${RUN_DEPENDS}

# Regress tests require an interactive terminal
REGRESS_FLAGS=	TERM=${TERM}
REGRESS_IS_INTERACTIVE=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Curses-Widgets
	${INSTALL_SCRIPT} ${WRKBUILD}/test.pl ${PREFIX}/share/examples/p5-Curses-Widgets/demo.pl

.include <bsd.port.mk>
