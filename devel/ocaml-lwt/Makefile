# $OpenBSD: Makefile,v 1.9 2013/05/16 09:09:50 sthen Exp $

COMMENT =	cooperative lightweight thread library
CATEGORIES =	devel

DISTNAME =	lwt-2.4.2
REVISION =	0
PKGNAME =	ocaml-${DISTNAME}
MASTER_SITES =	http://ocsigen.org/download/

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
CONFIGURE_ARGS =	--enable-tests --enable-react --enable-glib --enable-ssl
USE_GMAKE =	Yes


post-install:
	${INSTALL_DATA} \
		${WRKDIST}/{CHANGES,COPYING,README} \
		${PREFIX}/share/doc/ocaml-lwt/

.include <bsd.port.mk>
