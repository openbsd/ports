# $OpenBSD: Makefile,v 1.6 2009/06/20 22:05:11 avsm Exp $

COMMENT=	Objective Caml bindings for calendar functions
CATEGORIES=	devel

V=		1.09.5
DISTNAME=	calendar-${V}
PKGNAME=	ocaml-calendar-${V}p2
MASTER_SITES=	http://www.lri.fr/~signoles/prog/calendar/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>
HOMEPAGE=	http://www.lri.fr/~signoles/prog.en.html

PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MODULES=	lang/ocaml
NO_REGRESS= 	Yes
ALL_TARGET=	all
CONFIGURE_STYLE= gnu
USE_GMAKE=	yes

.include <bsd.port.mk>
