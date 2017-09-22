# $OpenBSD: Makefile,v 1.9 2017/09/22 20:52:58 sthen Exp $

COMMENT =	reliable event logging protocol library

DISTNAME =	librelp-1.2.9
REVISION =	1

SHARED_LIBS +=  relp                      1.0 # 1.0

CATEGORIES =	sysutils

HOMEPAGE =	http://www.librelp.com/

MAINTAINER =	Todd T. Fries <todd@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ffi gmp gnutls hogweed idn2 nettle p11-kit pthread tasn1
WANTLIB += unistring z

MASTER_SITES =		http://download.rsyslog.com/librelp/

SEPARATE_BUILD = 	Yes
CONFIGURE_STYLE =	gnu

LIB_DEPENDS =	security/gnutls
MODULES =	devel/gettext

.include <bsd.port.mk>
