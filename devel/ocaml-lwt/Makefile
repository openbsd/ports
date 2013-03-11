# $OpenBSD: Makefile,v 1.8 2013/03/11 10:50:12 espie Exp $

COMMENT =	cooperative lightweight thread library
CATEGORIES =	devel

DISTNAME =	lwt-2.4.2
PKGNAME =	ocaml-${DISTNAME}
MASTER_SITES =	http://ocsigen.org/download/

HOMEPAGE =	http://ocsigen.org/lwt/


# LGPLv2.1
PERMIT_PACKAGE_CDROM =		Yes

MODULES =	lang/ocaml

MYDEPENDS =	devel/ocaml-react \
		textproc/ocaml-text \
		security/ocaml-ssl
BUILD_DEPENDS =	${MYDEPENDS} sysutils/findlib
RUN_DEPENDS =	${MYDEPENDS}
LIB_DEPENDS =	devel/glib2 devel/libev converters/libiconv
WANTLIB =	glib-2.0 ev iconv intl pthread

CONFIGURE_STYLE =	oasis
CONFIGURE_ARGS =	--enable-tests --enable-react --enable-glib --enable-ssl
USE_GMAKE =	Yes


post-install:
	${INSTALL_DATA} \
		${WRKDIST}/{CHANGES,COPYING,README} \
		${PREFIX}/share/doc/ocaml-lwt/

.include <bsd.port.mk>
