# $OpenBSD: Makefile,v 1.3 2019/11/28 19:23:44 abieber Exp $

COMMENT =	command-line editor and web browser

DISTNAME =	edbrowse-3.7.6

CATEGORIES =	www

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

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
