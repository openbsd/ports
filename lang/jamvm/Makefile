# $OpenBSD: Makefile,v 1.20 2013/06/01 14:28:28 ajacoutot Exp $

ONLY_FOR_ARCHS=	amd64 i386 sparc64

COMMENT=	free, standards-compliant jvm with a small footprint

DISTNAME=	jamvm-1.5.4
CATEGORIES=	lang java
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=jamvm/}
REVISION=	0

SHARED_LIBS=	jvm	0.0

HOMEPAGE=	http://jamvm.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m pthread z

.if ${MACHINE_ARCH} == "sparc" || ${MACHINE_ARCH} == "sparc64"
WANTLIB+=	ffi

LIB_DEPENDS=	devel/libffi
.endif

BUILD_DEPENDS=	lang/jikes>=1.22 \
		lang/classpath>=0.98

RUN_DEPENDS=	lang/classpath>=0.98

USE_GMAKE=	Yes
SEPARATE_BUILD=	Yes
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
