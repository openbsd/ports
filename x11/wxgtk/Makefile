# $OpenBSD: Makefile,v 1.2 2003/01/09 01:05:37 brad Exp $

COMMENT=	"C++ cross-platform GUI toolkit"

DISTNAME=	wxGTK-2.2.9
PKGNAME=	${DISTNAME:L}
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wxwindows/}
EXTRACT_SUFX=   .tar.gz

PATCHFILES=	${DISTNAME}-patch1.patch.gz

HOMEPAGE=	http://wesley.informatik.uni-freiburg.de/~wxxt/

MAINTAINER=	Todd T. Fries <todd@openbsd.org>

CONFIGURE_STYLE=gnu dest
CONFIGURE_ENV=	CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
USE_GMAKE=		Yes

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
