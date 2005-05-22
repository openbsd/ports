# $OpenBSD: Makefile,v 1.1.1.1 2005/05/22 21:27:17 djm Exp $

SHARED_ONLY=		Yes

COMMENT=		"Perl API to flowd binary logfiles"

DISTNAME=		flowd-0.8.5
PKGNAME=		${DISTNAME:S/^/p5-/}
CATEGORIES=		net devel

HOMEPAGE=		http://www.mindrot.org/flowd.html

MAINTAINER=		Damien Miller <djm@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www2.mindrot.org/files/flowd/

WRKSRC=			${WRKDIR}/${DISTNAME}/Flowd-perl
BUILD_DEPENDS=		flowd::net/flowd
CONFIGURE_STYLE=	perl
MAKE_ENV+=		INC="-I${LOCALBASE}/include/flowd" \
			EXTRALIBS="-L${LOCALBASE}/lib -lflowd" \
			LDLOADLIBS="-L${LOCALBASE}/lib -lflowd"

.include <bsd.port.mk>
