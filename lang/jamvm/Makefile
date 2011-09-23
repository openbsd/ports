# $OpenBSD: Makefile,v 1.15 2011/09/23 23:39:57 kurt Exp $

ONLY_FOR_ARCHS=	amd64 arm i386 powerpc sparc64

COMMENT=	free, standards-compliant jvm with a small footprint

DISTNAME=	jamvm-1.5.4
CATEGORIES=	lang java
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=jamvm/}

SHARED_LIBS=	jvm	0.0

HOMEPAGE=	http://jamvm.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m pthread z

.if ${MACHINE_ARCH} == "sparc" || ${MACHINE_ARCH} == "sparc64"
WANTLIB+=	ffi

LIB_DEPENDS=	devel/libffi
.endif

BUILD_DEPENDS=	lang/jikes>=1.22 \
		lang/classpath>=0.98

RUN_DEPENDS=	lang/classpath>=0.98

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--includedir=${LOCALBASE}/include/jamvm \
		--libdir=${LOCALBASE}/lib/jamvm \
		--with-classpath-install-dir=${LOCALBASE} \
		--disable-tls
.if ${MACHINE_ARCH} == "sparc" || ${MACHINE_ARCH} == "sparc64"
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
.endif

post-install:
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share

.include <bsd.port.mk>
