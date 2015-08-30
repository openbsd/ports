# $OpenBSD: Makefile,v 1.16 2015/08/30 16:01:16 avsm Exp $

COMMENT =	cooperative lightweight thread library
CATEGORIES =	devel

GH_ACCOUNT =	ocsigen
GH_PROJECT =	lwt
GH_TAGNAME =	2.4.8
DISTNAME =	${GH_PROJECT}-${GH_TAGNAME}
PKGNAME =	ocaml-${DISTNAME}

HOMEPAGE =	http://ocsigen.org/lwt/


# LGPLv2.1
PERMIT_PACKAGE_CDROM =		Yes

MODULES =	lang/ocaml \
		devel/gettext

MYDEPENDS =	devel/ocaml-react \
		textproc/ocaml-text \
		security/ocaml-ssl \
		devel/ocaml-ppx-tools
BUILD_DEPENDS =	${MYDEPENDS} sysutils/findlib lang/ocaml-camlp4
RUN_DEPENDS =	${MYDEPENDS}
LIB_DEPENDS =	devel/glib2 devel/libev
WANTLIB =	glib-2.0 ev pthread

CONFIGURE_STYLE =	oasis
CONFIGURE_ARGS =	--enable-tests --enable-react --enable-glib \
			--enable-ssl --disable-docs --enable-camlp4 \
			--enable-ppx

USE_GMAKE =	Yes

.include <bsd.port.mk>
