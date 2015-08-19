# $OpenBSD: Makefile,v 1.16 2015/08/19 20:13:59 sthen Exp $

SHARED_ONLY=		Yes

COMMENT=		Python API for flowd binary log files

MODPY_EGG_VERSION=	0.9.1
DISTNAME=		flowd-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION =		5
CATEGORIES=		net devel

HOMEPAGE=		http://www.mindrot.org/flowd.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${MODPY_WANTLIB} pthread

MASTER_SITES=		http://www2.mindrot.org/files/flowd/

BUILD_DEPENDS=		net/flowd
MODULES=		lang/python
MAKE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include/flowd" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST=		Yes

.include <bsd.port.mk>
