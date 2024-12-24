COMMENT =	reliable event logging protocol library

DISTNAME =	librelp-1.11.0

SHARED_LIBS +=  relp                      6.0 # 6.0

CATEGORIES =	sysutils

HOMEPAGE =	https://www.rsyslog.com/librelp/

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB =  gmp gnutls hogweed iconv idn2 intl nettle p11-kit pthread
WANTLIB += tasn1 unistring crypto ssl

SITES =			http://download.rsyslog.com/librelp/

MODULES =		lang/python
MODPY_BUILDDEP =	No
MODPY_RUNDEP =		No

LIB_DEPENDS =		security/gnutls
TEST_DEPENDS =		shells/bash \
			sysutils/coreutils \
			sysutils/ggrep \
			${MODPY_RUN_DEPENDS}

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-valgrind

post-extract:
	sed -i s,#!/bin/bash,#!${LOCALBASE}/bin/bash, ${WRKSRC}/tests/*.sh

pre-test:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python
	ln -sf ${LOCALBASE}/bin/gtimeout ${WRKDIR}/bin/timeout
	ln -sf ${LOCALBASE}/bin/ggrep ${WRKDIR}/bin/grep
	ln -sf ${LOCALBASE}/bin/ghead ${WRKDIR}/bin/head

.include <bsd.port.mk>
