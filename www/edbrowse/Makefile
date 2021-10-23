# $OpenBSD: Makefile,v 1.6 2021/08/31 19:38:20 fcambus Exp $

COMMENT =	command-line editor and web browser

GH_ACCOUNT =	CMB
GH_PROJECT =	edbrowse
GH_TAGNAME =	v3.7.7
REVISION =	0

CATEGORIES =	www

HOMEPAGE =	https://edbrowse.org/

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
