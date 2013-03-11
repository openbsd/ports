# $OpenBSD: Makefile,v 1.15 2013/03/11 11:35:55 espie Exp $

SHARED_ONLY=		Yes

COMMENT=		Python API for flowd binary log files

MODPY_EGG_VERSION=	0.9.1
DISTNAME=		flowd-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION =		4
CATEGORIES=		net devel

HOMEPAGE=		http://www.mindrot.org/flowd.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://www2.mindrot.org/files/flowd/

BUILD_DEPENDS=		net/flowd
MODULES=		lang/python
MAKE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include/flowd" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST=		Yes

.include <bsd.port.mk>
