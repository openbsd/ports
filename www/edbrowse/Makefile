# $OpenBSD: Makefile,v 1.5 2021/02/01 01:46:00 kn Exp $

COMMENT =	command-line editor and web browser

GH_ACCOUNT =	CMB
GH_PROJECT =	edbrowse
GH_TAGNAME =	v3.7.7

CATEGORIES =	www

HOMEPAGE =	http://edbrowse.org/

# GPL
PERMIT_PACKAGE =	Yes

WANTLIB += c curl duktape m pcre pthread readline tidy

MODULES =	devel/cmake

CONFIGURE_ARGS +=	-DCMAKE_INSTALL_PREFIX:Path=${PREFIX}

LIB_DEPENDS =	devel/pcre \
		lang/duktape \
		net/curl \
		www/tidy

SUBST_VARS +=	PREFIX

pre-configure:
	${SUBST_CMD} ${WRKDIST}/CMakeLists.txt

.include <bsd.port.mk>
