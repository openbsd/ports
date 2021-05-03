# $OpenBSD: Makefile,v 1.1.1.1 2021/05/03 16:38:26 rsadowski Exp $

QT6NAME =	Qt5Compat
COMMENT =	Qt6 module contains unsupported Qt 5 APIs

SHARED_LIBS +=  Qt6Core5Compat      0.0 # 6.0

WANTLIB += ${COMPILER_LIBCXX} Qt6Core c icudata icui18n icuuc
WANTLIB += m

.include <bsd.port.mk>
