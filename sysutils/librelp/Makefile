# $OpenBSD: Makefile,v 1.17 2020/08/25 05:48:54 remi Exp $

COMMENT =	reliable event logging protocol library

DISTNAME =	librelp-1.6.0

SHARED_LIBS +=  relp                      4.0 # 5.0

CATEGORIES =	sysutils

HOMEPAGE =	https://www.rsyslog.com/librelp/

MAINTAINER =	Remi Locherer <remi@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB =  ffi gmp gnutls hogweed iconv idn2 intl nettle p11-kit pthread
WANTLIB += tasn1 unistring crypto ssl

MASTER_SITES =		http://download.rsyslog.com/librelp/

MODULES =		lang/python
MODPY_BUILDDEP =	No
MODPY_RUNDEP =		No

LIB_DEPENDS =		security/gnutls
TEST_DEPENDS =		shells/bash \
			sysutils/coreutils \
			sysutils/ggrep \
			${MODPY_RUN_DEPENDS}

SEPARATE_BUILD = 	Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-valgrind

post-extract:
	sed -i s,#!/bin/bash,#!${LOCALBASE}/bin/bash, ${WRKSRC}/tests/*.sh

pre-test:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python
	ln -sf ${LOCALBASE}/bin/gtimeout ${WRKDIR}/bin/timeout
	ln -sf ${LOCALBASE}/bin/ggrep ${WRKDIR}/bin/grep

.include <bsd.port.mk>
