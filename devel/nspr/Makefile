# $OpenBSD: Makefile,v 1.30 2009/08/04 13:56:09 martynas Exp $
# $FreeBSD: /repoman/r/pcvs/ports/devel/nspr/Makefile,v 1.13 2003/12/13 21:30:19 peter Exp $

ONLY_FOR_ARCHS=	alpha amd64 arm i386 powerpc sparc sparc64 hppa

COMMENT-main=		Netscape Portable Runtime
COMMENT-docs=		HTML Documentation for NSPR

VER=			4.8
DISTNAME=		nspr-${VER}
PKGNAME-main=		${DISTNAME}
PKGNAME-docs=		nspr-docs-${VER}
DISTFILES=		${DISTNAME}${EXTRACT_SUFX} \
			nspr-reference${EXTRACT_SUFX}:0

SO_VERSION=		21.0
.for _lib in nspr4 plc4 plds4
SHARED_LIBS+=		${_lib} ${SO_VERSION}
.endfor

CATEGORIES=		devel

HOMEPAGE=		http://www.mozilla.org/projects/nspr/index.html

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

WANTLIB-main=		c

# MPL - Mozilla Public License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://ftp.eu.mozilla.org/pub/mozilla.org/nspr/releases/v${VER}/src/ \
			http://ftp.mozilla.org/pub/mozilla.org/nspr/releases/v${VER}/src/
MASTER_SITES0=		http://ftp.eu.mozilla.org/pub/mozilla.org/nspr/doc/ \
			http://ftp.mozilla.org/pub/mozilla.org/nspr/doc/
MULTI_PACKAGES= -main -docs

PKG_ARCH-docs=	*

USE_GMAKE=		Yes
AUTOCONF_VERSION=	2.13
CONFIGURE_STYLE=	autoconf no-autoheader
CONFIGURE_ARGS+=	--disable-debug \
			--with-pthreads

MAKE_ENV=		SO_VERSION="${SO_VERSION}"
CONFIGURE_ENV=		${MAKE_ENV}

WRKSRC=			${WRKDIST}/mozilla/nsprpub
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build/autoconf

pre-configure:
	@cp ${FILESDIR}/nspr.pc.in ${WRKSRC}/config/

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/nspr
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nspr/html
	cd ${WRKSRC}/dist/include && \
		find . -type d \
			-exec ${INSTALL_DATA_DIR} ${PREFIX}/include/{} \; && \
		find . ! -type d \
			-exec ${INSTALL_DATA} {} ${PREFIX}/include/{} \;
	cd ${WRKSRC}/dist/lib && tar cfL - . | \
		(cd ${PREFIX}/lib && tar -xf -)
	cd ${WRKDIR}/nspr/reference/html && \
		pax -s ',.*/CVS.*,,' -rwvpe . ${PREFIX}/share/doc/nspr/html
	${INSTALL_SCRIPT} ${WRKSRC}/config/nspr-config ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/config/nspr.pc ${PREFIX}/lib/pkgconfig
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/doc/nspr/html

do-regress:
	${MAKE_PROGRAM} -C ${WRKSRC}/pr/tests
	${MAKE_PROGRAM} -C ${WRKSRC}/lib/tests
	@cd ${WRKSRC}/pr/tests && ulimit -Sn 192 && env TZ=gmt \
		LD_LIBRARY_PATH=${WRKSRC}/dist/lib /bin/ksh runtests.sh
	LD_LIBRARY_PATH=${WRKSRC}/dist/lib ${WRKSRC}/lib/tests/string
	LD_LIBRARY_PATH=${WRKSRC}/dist/lib ${WRKSRC}/lib/tests/base64t

.include <bsd.port.mk>
