# $OpenBSD: Makefile,v 1.1.1.1 2006/06/01 02:16:59 avsm Exp $

COMMENT=	"build system designed for scalability and portability"
CATEGORIES=	devel

V=		0.9.6.9-1
DISTNAME=	omake-0.9.6.9-1
PKGNAME=	omake-0.9.6.9pl1
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

.include <bsd.port.mk>
