# $OpenBSD: Makefile,v 1.6 2002/05/13 18:50:40 espie Exp $

COMMENT=	"curses(3) based terminal widgets"

DISTNAME=	CursesWidgets-1.992
PKGNAME=	p5-Curses-Widgets-1.992

CATEGORIES=	devel perl5
NEED_VERSION=	1.502
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Curses/}

HOMEPAGE=	http://www.odinicfoundation.org/arthur/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=  ::devel/p5-Curses
RUN_DEPENDS=    ${BUILD_DEPENDS}

CONFIGURE_STYLE= perl

# Regress tests require an interactive terminal
REGRESS_FLAGS=	${MAKE_FLAGS} TERM=${TERM}
REGRESS_IS_INTERACTIVE=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Curses-Widgets
	${INSTALL_SCRIPT} ${WRKBUILD}/test.pl ${PREFIX}/share/examples/p5-Curses-Widgets/demo.pl

.include <bsd.port.mk>
