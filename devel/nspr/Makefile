# $OpenBSD: Makefile,v 1.9 2006/11/06 14:35:45 ajacoutot Exp $
# $FreeBSD: /repoman/r/pcvs/ports/devel/nspr/Makefile,v 1.13 2003/12/13 21:30:19 peter Exp $

ONLY_FOR_ARCHS=	alpha amd64 i386 powerpc sparc sparc64

COMMENT=		"Netscape Portable Runtime"

VER=			4.6.3
DISTNAME=		nspr-${VER}

SO_VERSION=		1.0
.for _lib in nspr4 plc4 plds4
SHARED_LIBS+=		${_lib} ${SO_VERSION}
.endfor

CATEGORIES=		devel

HOMEPAGE=		http://www.mozilla.org/projects/nspr/index.html

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MPL - Mozilla Public License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://ftp.eu.mozilla.org/pub/mozilla.org/nspr/releases/v${VER}/src/ \
			http://ftp.mozilla.org/pub/mozilla.org/nspr/releases/v${VER}/src/

USE_GMAKE=		Yes
AUTOCONF_VERSION=	2.13
CONFIGURE_STYLE=	autoconf no-autoheader
CONFIGURE_ARGS+=	--disable-debug \
			--with-pthreads

MAKE_ENV=		SO_VERSION="${SO_VERSION}"
CONFIGURE_ENV=		${MAKE_ENV}

NO_REGRESS=		Yes

WRKSRC=			${WRKDIST}/mozilla/nsprpub
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build/autoconf

pre-configure:
	perl -pi -e 's,_SO_VERSION_,${SO_VERSION},g' \
		${WRKSRC}/pr/include/md/_openbsd.h
	@cp ${FILESDIR}/nspr.pc.in ${WRKSRC}/config/

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/nspr
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
	cd ${WRKSRC}/dist/include && tar cfL - . | \
		(cd ${PREFIX}/include && tar -xf -)
	cd ${WRKSRC}/dist/lib && tar cfL - . | \
		(cd ${PREFIX}/lib && tar -xf -)
	${INSTALL_SCRIPT} ${WRKSRC}/config/nspr-config ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/config/nspr.pc ${PREFIX}/lib/pkgconfig

.include <bsd.port.mk>
