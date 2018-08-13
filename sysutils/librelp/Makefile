# $OpenBSD: Makefile,v 1.13 2018/08/13 22:07:13 remi Exp $

COMMENT =	reliable event logging protocol library

DISTNAME =	librelp-1.2.16

SHARED_LIBS +=  relp                      2.0 # 4.0

CATEGORIES =	sysutils

HOMEPAGE =	https://www.rsyslog.com/librelp/

MAINTAINER =	Remi Locherer <remi@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  ffi gmp gnutls hogweed iconv idn2 intl nettle p11-kit pthread
WANTLIB += tasn1 unistring z

MASTER_SITES =		http://download.rsyslog.com/librelp/

LIB_DEPENDS =		security/gnutls

TEST_DEPENDS =		shells/bash \
			${LIB_DEPENDS}

SEPARATE_BUILD = 	Yes

CONFIGURE_STYLE =	gnu

pre-test:
	sed -i s,#!/bin/bash,#!${LOCALBASE}/bin/bash, ${WRKSRC}/tests/*.sh

.include <bsd.port.mk>
