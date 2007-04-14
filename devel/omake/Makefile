# $OpenBSD: Makefile,v 1.4 2007/04/14 21:20:19 sturm Exp $

COMMENT=	"build system designed for scalability and portability"
CATEGORIES=	devel

V=		0.9.6.9-1
DISTNAME=	omake-0.9.6.9-1
PKGNAME=	omake-0.9.6.9pl1p2
WRKDIST=	${WRKDIR}/omake-0.9.6.9
MASTER_SITES=	http://omake.metaprl.org/downloads/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>
HOMEPAGE=	http://omake.metaprl.org/

# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MODULES=	lang/ocaml
NO_REGRESS=	Yes
DESTDIRNAME=	INSTALL_ROOT

WANTLIB=	curses m pthread readline ncurses c

.include <bsd.port.mk>
