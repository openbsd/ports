# $OpenBSD: Makefile,v 1.14 2013/03/08 02:04:37 djm Exp $

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
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www2.mindrot.org/files/flowd/

BUILD_DEPENDS=		net/flowd
MODULES=		lang/python
MAKE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include/flowd" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_REGRESS=		Yes

.include <bsd.port.mk>
