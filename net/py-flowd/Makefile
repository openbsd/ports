# $OpenBSD: Makefile,v 1.10 2010/08/30 21:21:53 sthen Exp $

SHARED_ONLY=		Yes

COMMENT=		Python API for flowd binary log files

MODPY_EGG_VERSION=	0.9.1
DISTNAME=		flowd-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION =		1
CATEGORIES=		net devel

HOMEPAGE=		http://www.mindrot.org/flowd.html

MAINTAINER=		Damien Miller <djm@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www2.mindrot.org/files/flowd/

BUILD_DEPENDS=		::net/flowd
MODULES=		lang/python
MAKE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include/flowd" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_REGRESS=		Yes

.include <bsd.port.mk>
