# $OpenBSD: Makefile,v 1.4 2021/01/16 17:26:16 abieber Exp $

COMMENT =	command-line editor and web browser

DISTNAME =	edbrowse-3.7.6
REVISION =	0

CATEGORIES =	www

HOMEPAGE =	http://edbrowse.org/

# GPL
PERMIT_PACKAGE =	Yes

WANTLIB += c curl duktape m pcre pthread readline tidy

MASTER_SITES =	https://deftly.net/dist/

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
