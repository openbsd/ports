# $OpenBSD: Makefile,v 1.3 2004/08/16 21:12:37 naddy Exp $

COMMENT=	"Objective Caml package manager"
CATEGORIES=	sysutils
DISTNAME=	findlib-1.0.4
MASTER_SITES=	http://www.ocaml-programming.de/packages/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>
HOMEPAGE=	http://www.ocaml-programming.de/packages/

# MIT/X11
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MODULES=	lang/ocaml
LIB_DEPENDS=	tk84.1::x11/tk/8.4
NO_REGRESS=	Yes

SAMPLE_LOC=	${PREFIX}/share/examples/findlib
SAMPLE_FILE=	${SAMPLE_LOC}/ocamlfind.conf
MAKE_FLAGS=	PREFIX=${PREFIX} SYSCONFDIR=${SYSCONFDIR}
FAKE_FLAGS=	PREFIX=${PREFIX} SYSCONFDIR=${DESTDIR}${SAMPLE_LOC}

ALL_TARGET=	all ${MODOCAML_NATIVE:S,Yes,all opt,:S,No,,}
USE_GMAKE=	Yes
SUBST_VARS=	SAMPLE_FILE

do-configure:
	cp ${WRKSRC}/Makefile.config.pattern ${WRKBUILD}/Makefile.config

.include <bsd.port.mk>
