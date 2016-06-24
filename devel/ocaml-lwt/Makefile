# $OpenBSD: Makefile,v 1.22 2016/06/24 15:59:12 krw Exp $

COMMENT =	cooperative lightweight thread library
CATEGORIES =	devel

GH_ACCOUNT =	ocsigen
GH_PROJECT =	lwt
GH_TAGNAME =	2.5.2
REVISION =	0
# This is not the latest upstream version, but the last one that is most
# compatible due to an API change. Be careful about upgrading to lwt-2.5.0
# without checking that no in-tree ports break due to new buffer APIs.
PKGNAME =	ocaml-${DISTNAME}

HOMEPAGE =	http://ocsigen.org/lwt/

# LGPLv2.1
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += c glib-2.0 ev m pthread

MODULES =	lang/ocaml \
		devel/gettext

MYDEPENDS =	devel/ocaml-react \
		textproc/ocaml-text \
		security/ocaml-ssl \
		devel/ocaml-ppx-tools
BUILD_DEPENDS =	${MYDEPENDS} sysutils/findlib lang/ocaml-camlp4 \
		devel/ocaml-ocamlbuild
RUN_DEPENDS =	${MYDEPENDS}
LIB_DEPENDS =	devel/glib2 devel/libev

CONFIGURE_STYLE =	oasis
CONFIGURE_ARGS =	--enable-tests --enable-react --enable-glib \
			--enable-ssl --disable-docs --enable-camlp4 \
			--enable-ppx

USE_GMAKE =	Yes

.include <bsd.port.mk>
