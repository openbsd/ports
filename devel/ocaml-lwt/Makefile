# $OpenBSD: Makefile,v 1.5 2012/10/22 11:41:26 jasper Exp $

COMMENT =	cooperative lightweight thread library
CATEGORIES =	devel

DISTNAME =	lwt-2.4.1
PKGNAME =	ocaml-${DISTNAME}
REVISION =	0
MASTER_SITES =	http://ocsigen.org/download/

HOMEPAGE =	http://ocsigen.org/lwt/


# LGPLv2.1
PERMIT_PACKAGE_FTP =		Yes
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_DISTFILES_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes

MODULES =	devel/gettext \
		lang/ocaml

MYDEPENDS =	devel/ocaml-react \
		textproc/ocaml-text \
		security/ocaml-ssl
BUILD_DEPENDS =	${MYDEPENDS} \
		sysutils/findlib
RUN_DEPENDS =	${MYDEPENDS} \
		lang/ocaml
LIB_DEPENDS =	devel/glib2 \
		devel/libev
WANTLIB =	glib-2.0 ev pthread

CONFIGURE_STYLE =	oasis
CONFIGURE_ARGS =--enable-tests \
		--enable-react \
		--enable-glib \
		--enable-ssl
USE_GMAKE =	Yes


post-install:
	${INSTALL_DATA} \
		${WRKDIST}/{CHANGES,COPYING,README} \
		${PREFIX}/share/doc/ocaml-lwt/

.include <bsd.port.mk>
