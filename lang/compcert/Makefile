# $OpenBSD: Makefile,v 1.1.1.1 2015/09/05 00:20:08 daniel Exp $

ONLY_FOR_ARCHS =	i386

COMMENT =		high assurance C compiler

V=			2.5
GH_ACCOUNT =		AbsInt
GH_PROJECT =		CompCert
GH_TAGNAME =		v${V}
DISTNAME =              ${GH_PROJECT}-${V}
PKGNAME =		${DISTNAME:L}

HOMEPAGE =		http://compcert.inria.fr/

CATEGORIES =		lang

MAINTAINER = Daniel Dickman <daniel@openbsd.org>

# INRIA Non-Commercial License Agreement.
PERMIT_PACKAGE_CDROM =	no commercial use
PERMIT_PACKAGE_FTP =	Yes

WANTLIB	+= c m

USE_GMAKE	= Yes

CONFIGURE_STYLE = simple
CONFIGURE_ARGS  = -prefix ${WRKINST}${PREFIX} \
		  -no-standard-headers \
		  ${MACHINE_ARCH:S/i386/ia32/}-bsd

BUILD_DEPENDS =	lang/ocaml \
		math/coq \
		devel/ocaml-menhir

post-install:
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/compcert
	sed -i -e "s,^stdlib_path=.*,stdlib_path=${TRUEPREFIX}/lib/compcert," \
		${PREFIX}/share/compcert/compcert.ini

.include <bsd.port.mk>
