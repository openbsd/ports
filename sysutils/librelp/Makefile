# $OpenBSD: Makefile,v 1.8 2017/02/18 17:33:51 ajacoutot Exp $

COMMENT =	reliable event logging protocol library

DISTNAME =	librelp-1.2.9
REVISION =	0

SHARED_LIBS +=  relp                      1.0 # 1.0

CATEGORIES =	sysutils

HOMEPAGE =	http://www.librelp.com/

MAINTAINER =	Todd T. Fries <todd@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ffi gmp gnutls hogweed idn2 nettle p11-kit pthread
WANTLIB += tasn1 z

MASTER_SITES =		http://download.rsyslog.com/librelp/

SEPARATE_BUILD = 	Yes
CONFIGURE_STYLE =	gnu

LIB_DEPENDS =	security/gnutls
MODULES =	devel/gettext

.include <bsd.port.mk>
