# $OpenBSD: Makefile,v 1.2 2012/09/01 14:36:57 ajacoutot Exp $

COMMENT =	cooperative lightweight thread library
CATEGORIES =	devel

DISTNAME =	lwt-2.4.0
PKGNAME =	ocaml-${DISTNAME}
MASTER_SITES =	http://ocsigen.org/download/
REVISION=	0

HOMEPAGE =	http://ocsigen.org/lwt/


# LGPLv2.1
PERMIT_PACKAGE_FTP =		Yes
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_DISTFILES_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes

MODULES =	lang/ocaml

MYDEPENDS =	devel/ocaml-react \
		textproc/ocaml-text \
		security/ocaml-ssl
BUILD_DEPENDS =	${MYDEPENDS} sysutils/findlib
RUN_DEPENDS =	${MYDEPENDS} lang/ocaml
LIB_DEPENDS =	devel/glib2 devel/libev converters/libiconv
WANTLIB =	glib-2.0 ev iconv intl pthread

CONFIGURE_STYLE =	oasis
CONFIGURE_ARGS =	--enable-tests --enable-react --enable-glib --enable-ssl


post-install:
	${INSTALL_DATA} \
		${WRKDIST}/{CHANGES,COPYING,README} \
		${PREFIX}/share/doc/ocaml-lwt/

.include <bsd.port.mk>
