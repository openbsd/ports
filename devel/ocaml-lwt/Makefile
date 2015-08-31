# $OpenBSD: Makefile,v 1.17 2015/08/31 11:41:42 sthen Exp $

COMMENT =	cooperative lightweight thread library
CATEGORIES =	devel

GH_ACCOUNT =	ocsigen
GH_PROJECT =	lwt
GH_TAGNAME =	2.4.8
# This is not the latest upstream version, but the last one that is most
# compatible due to an API change. Be careful about upgrading to lwt-2.5.0
# without checking that no in-tree ports break due to new buffer APIs.
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
