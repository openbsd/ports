# $OpenBSD: Makefile,v 1.2 2004/07/31 21:17:22 naddy Exp $
# $FreeBSD: /repoman/r/pcvs/ports/devel/nspr/Makefile,v 1.13 2003/12/13 21:30:19 peter Exp $

# currently only supporting i386, but alpha sparc sparc64 are possible
ONLY_FOR_ARCHS=		i386

COMMENT=		"Netscape Portable Runtime"

VER=			4.4.1
DISTNAME=		nspr-${VER}
CATEGORIES=		devel

HOMEPAGE=		http://www.mozilla.org/projects/nspr/index.html

MAINTAINER=		Kurt Miller <truk@optonline.net>

# MPL - Mozilla Public License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://ftp.mozilla.org/pub/mozilla.org/nspr/releases/v${VER}/src/

USE_X11=		Yes
USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_SCRIPT=	../configure
CONFIGURE_ARGS+=	--disable-debug \
			--with-pthreads

NO_REGRESS=		Yes

WRKSRC=			${WRKDIST}/mozilla/nsprpub/build
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/autoconf

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/nspr
	cd ${WRKSRC}/dist/include && tar cfL - . | \
		(cd ${PREFIX}/include && tar -xf -)
	cd ${WRKSRC}/dist/lib && tar cf - . | \
		(cd ${PREFIX}/lib && tar -xf -)
	${INSTALL_SCRIPT} ${WRKSRC}/config/nspr-config ${PREFIX}/bin

.include <bsd.port.mk>
