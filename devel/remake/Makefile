COMMENT=		GNU make debugger

PKGNAME=		remake-1.5
DISTNAME=		remake-4.3+dbg-1.5

CATEGORIES=		devel

HOMEPAGE=		http://bashdb.sourceforge.net/remake/mdb.html
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=bashdb/}

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB += c curses readline

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--without-guile

# The test suite expects to find SHELL.
MAKE_ENV +=		SHELL=/bin/ksh

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/make ${PREFIX}/bin/remake
	${INSTALL_MAN} ${WRKSRC}/doc/make.1 ${PREFIX}/man/man1/remake.1

.include <bsd.port.mk>
