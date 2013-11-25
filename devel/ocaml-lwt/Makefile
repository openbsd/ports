# $OpenBSD: Makefile,v 1.10 2013/11/25 14:35:26 dcoppa Exp $

COMMENT =	cooperative lightweight thread library
CATEGORIES =	devel

GH_VER =	2.4.4
DISTNAME =	lwt-${GH_VER}
PKGNAME =	ocaml-${DISTNAME}
MASTER_SITES =	https://github.com/ocsigen/lwt/archive/
DISTFILES =	${DISTNAME}${EXTRACT_SUFX}{${GH_VER}${EXTRACT_SUFX}}

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
