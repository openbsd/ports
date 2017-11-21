# $OpenBSD: Makefile,v 1.10 2017/11/21 00:13:03 naddy Exp $

COMMENT =	reliable event logging protocol library

DISTNAME =	librelp-1.2.9
REVISION =	2

SHARED_LIBS +=  relp                      1.0 # 1.0

CATEGORIES =	sysutils

HOMEPAGE =	http://www.librelp.com/

MAINTAINER =	Todd T. Fries <todd@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  ffi gmp gnutls hogweed iconv idn2 intl nettle p11-kit pthread
WANTLIB += tasn1 unistring z

MASTER_SITES =		http://download.rsyslog.com/librelp/

SEPARATE_BUILD = 	Yes
CONFIGURE_STYLE =	gnu

LIB_DEPENDS =	security/gnutls
.include <bsd.port.mk>
