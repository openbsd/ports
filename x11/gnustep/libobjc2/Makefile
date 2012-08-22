# $OpenBSD: Makefile,v 1.1.1.1 2012/08/22 07:01:45 sebastia Exp $

COMMENT =	GNUstep libobjc2 objective-c runtime

# note: this port does not use the gnustep module
DISTNAME =	libobjc2-1.6.1
PKGNAME =	gnustep-${DISTNAME}
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	devel x11/gnustep

SHARED_LIBS +=	objc2	0.0
SHARED_LIBS +=  objcxx	0.0

HOMEPAGE =	http://www.gnustep.org/
MASTER_SITES =	http://download.gna.org/gnustep/

WANTLIB += 	m stdc++

MAKE_ENV +=	CPPFLAGS+=${CPPFLAGS}
MAKE_FLAGS +=	LIBOBJCLIBNAME=objc2 \
		LIBOBJC=libobjc2 \
		HEADER_DIR=${DESTDIR}${PREFIX}/include/gnustep \
		VERSION=${LIBobjc2_VERSION} \
		SILENT=""

.include <bsd.port.mk>
