# $OpenBSD: Makefile,v 1.1.1.1 2019/03/11 11:13:53 bentley Exp $

COMMENT =	garbage collector library

V =		0.3.1
DISTNAME =	libgcroots-$V

SHARED_LIBS +=  gcroots                   0.0 # 1.0

CATEGORIES =	devel

HOMEPAGE =	https://github.com/uim/libgcroots/

# Boehm GC license, permission to use/copy/modify/distribute
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://github.com/uim/libgcroots/releases/download/$V/

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
