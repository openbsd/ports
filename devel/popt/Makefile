# $OpenBSD: Makefile,v 1.12 2003/07/15 16:50:22 jolan Exp $

COMMENT=		"getopt(3)-like library with a number of enhancements"

DISTNAME=		popt-1.7
CATEGORIES=		devel
MASTER_SITES=		ftp://ftp.rpm.org/pub/rpm/dist/rpm-4.1.x/ \
			ftp://ftp.mirror.ac.uk/sites/ftp.rpm.org/pub/rpm/dist/rpm-4.1.x/

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=		libpopt_la_LDFLAGS="-version-info 0:3"

USE_GMAKE=		Yes
SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--with-included-gettext
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
