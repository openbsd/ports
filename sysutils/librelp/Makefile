# $OpenBSD: Makefile,v 1.11 2018/03/06 21:05:25 remi Exp $

COMMENT =	reliable event logging protocol library

DISTNAME =	librelp-1.2.14

SHARED_LIBS +=  relp                      1.1 # 3.0

CATEGORIES =	sysutils

HOMEPAGE =	http://www.librelp.com/

MAINTAINER =	Remi Locherer <remi@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  ffi gmp gnutls hogweed iconv idn2 intl nettle p11-kit pthread
WANTLIB += tasn1 unistring z

MASTER_SITES =		http://download.rsyslog.com/librelp/

LIB_DEPENDS =		security/gnutls

SEPARATE_BUILD = 	Yes

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
