# $OpenBSD: Makefile,v 1.3 2001/05/10 22:11:27 naddy Exp $

COMMENT=	"curses(3) based terminal widgets"

DISTNAME=	curses_widgets_1_2
PKGNAME=	p5-Curses-Widgets-1.2

CATEGORIES=	devel perl5
NEED_VERSION=	1.402
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= Curses

HOMEPAGE=	http://www.odinicfoundation.org/arthur/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

PERL_MODULES=   ${LOCALBASE}/libdata/perl5/site_perl/${MACHINE_ARCH}-openbsd
BUILD_DEPENDS=  ${PERL_MODULES}/Curses.pm::devel/p5-Curses
RUN_DEPENDS=    ${BUILD_DEPENDS}

CONFIGURE_STYLE= perl
WRKDIST= 	${WRKDIR}/curses_widgets-1.2

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Curses-Widgets
	${INSTALL_SCRIPT} ${WRKBUILD}/test.pl ${PREFIX}/share/examples/p5-Curses-Widgets/demo.pl

.include <bsd.port.mk>
