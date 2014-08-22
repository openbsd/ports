# $OpenBSD: Makefile,v 1.12 2014/08/22 22:49:07 kili Exp $

COMMENT =	cooperative lightweight thread library
CATEGORIES =	devel

GH_ACCOUNT =	ocsigen
GH_PROJECT =	lwt
GH_TAGNAME =	2.4.4
GH_COMMIT =	c6280535eb754b70f75a26fbfd406b7d492f8608
DISTNAME =	${GH_PROJECT}-${GH_TAGNAME}
PKGNAME =	ocaml-${DISTNAME}
REVISION =	0

HOMEPAGE =	http://ocsigen.org/lwt/


# LGPLv2.1
PERMIT_PACKAGE_CDROM =		Yes

MODULES =	lang/ocaml \
		devel/gettext

MYDEPENDS =	devel/ocaml-react \
		textproc/ocaml-text \
		security/ocaml-ssl
BUILD_DEPENDS =	${MYDEPENDS} sysutils/findlib
RUN_DEPENDS =	${MYDEPENDS}
LIB_DEPENDS =	devel/glib2 devel/libev
WANTLIB =	glib-2.0 ev pthread

CONFIGURE_STYLE =	oasis
CONFIGURE_ARGS =	--enable-tests --enable-react --enable-glib \
			--enable-ssl --disable-docs

USE_GMAKE =	Yes

.include <bsd.port.mk>
