# $OpenBSD: Makefile,v 1.8 2006/11/03 20:56:23 ajacoutot Exp $
# $FreeBSD: /repoman/r/pcvs/ports/devel/nspr/Makefile,v 1.13 2003/12/13 21:30:19 peter Exp $

ONLY_FOR_ARCHS=		i386 powerpc amd64 sparc64

COMMENT=		"Netscape Portable Runtime"

VER=			4.4.1
DISTNAME=		nspr-${VER}
PKGNAME=		${DISTNAME}p3
SHARED_LIBS=		nspr4	1.0 \
			plc4	1.0 \
			plds4	1.0

CATEGORIES=		devel

HOMEPAGE=		http://www.mozilla.org/projects/nspr/index.html

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MPL - Mozilla Public License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://ftp.mozilla.org/pub/mozilla.org/nspr/releases/v${VER}/src/

USE_X11=		Yes
USE_GMAKE=		Yes

AUTOCONF_VERSION=	2.13
CONFIGURE_STYLE=	autoconf no-autoheader
CONFIGURE_ARGS+=	--disable-debug \
			--with-pthreads

MAKE_ENV=		LIBnspr4_VERSION=${LIBnspr4_VERSION} \
			LIBplc4_VERSION=${LIBplc4_VERSION} \
			LIBplds4_VERSION=${LIBplds4_VERSION}

NO_REGRESS=		Yes

WRKSRC=			${WRKDIST}/mozilla/nsprpub
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build/autoconf

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/nspr
	cd ${WRKSRC}/dist/include && tar cfL - . | \
		(cd ${PREFIX}/include && tar -xf -)
	cd ${WRKSRC}/dist/lib && tar cfL - . | \
		(cd ${PREFIX}/lib && tar -xf -)
	${INSTALL_SCRIPT} ${WRKSRC}/config/nspr-config ${PREFIX}/bin

.include <bsd.port.mk>
