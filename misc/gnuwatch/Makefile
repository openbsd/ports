COMMENT=	GNU watch command

DISTNAME=	procps-ng-4.0.5
PKGNAME=	${DISTNAME:S/procps-ng/gnuwatch/}
EXTRACT_SUFX=	.tar.xz
CATEGORIES=	misc

HOMEPAGE=	https://gitlab.com/procps-ng/procps/

# watch LGPLv2.1; some other tools.in the distfile GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=	curses c

SITES=		${SITE_SOURCEFORGE:=procps-ng/}

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-ncurses \
		--disable-nls \
		--disable-dependency-tracking \
		--disable-pidwait
ALL_TARGET=	src/watch
USE_GMAKE=	Yes
NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/watch ${PREFIX}/bin/gnuwatch
	${INSTALL_MAN} ${WRKSRC}/man/watch.1 ${PREFIX}/man/man1/gnuwatch.1

.include <bsd.port.mk>
