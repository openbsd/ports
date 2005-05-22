# $OpenBSD: Makefile,v 1.1.1.1 2005/05/22 10:15:38 djm Exp $

SHARED_ONLY=		Yes

COMMENT=		"Python API for flowd binary log files"

DISTNAME=		flowd-0.8.5
PKGNAME=		${DISTNAME:S/^/py-/}
CATEGORIES=		net devel

HOMEPAGE=		http://www.mindrot.org/flowd.html

MAINTAINER=		Damien Miller <djm@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www2.mindrot.org/files/flowd/

BUILD_DEPENDS=		flowd::net/flowd
MODULES=		lang/python
MAKE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include/flowd" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_REGRESS=		Yes

.include <bsd.port.mk>
