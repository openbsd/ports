# $OpenBSD: Makefile,v 1.2 2018/09/12 04:58:49 daniel Exp $

BROKEN=			An update of coq >= 8.6.1 is required to unbreak

ONLY_FOR_ARCHS =	amd64 i386

COMMENT =		high assurance C compiler

V=			3.3
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
		  ${MACHINE_ARCH}-bsd

BUILD_DEPENDS =	lang/ocaml>=4.02 \
		math/coq>=8.6.1 \
		devel/ocaml-menhir>=20171212

post-install:
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/compcert
	sed -i -e "s,^stdlib_path=.*,stdlib_path=${TRUEPREFIX}/lib," \
		${PREFIX}/share/compcert/compcert.ini

.include <bsd.port.mk>
