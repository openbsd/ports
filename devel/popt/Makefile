# $OpenBSD: Makefile,v 1.16 2010/05/01 11:29:16 sthen Exp $

COMMENT=		getopt(3)-like library with a number of enhancements

DISTNAME=		popt-1.7
PKGNAME=		${DISTNAME}p1
SHARED_LIBS=		popt 0.3
CATEGORIES=		devel
MASTER_SITES=		ftp://ftp.mirrorservice.org/sites/ftp.rpm.org/pub/rpm/dist/rpm-4.1.x/ \
			ftp://ftp.sunfreeware.com/pub/freeware/SOURCES/ \
			ftp://ftp.rpm.org/pub/rpm/dist/rpm-4.1.x/

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--with-included-gettext
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
