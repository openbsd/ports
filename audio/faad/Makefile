# $OpenBSD: Makefile,v 1.9 2003/12/29 13:17:53 espie Exp $

COMMENT=	"MPEG2 and MPEG-4 AAC decoder"

DISTNAME=	faad2-1.1
PKGNAME=	faad-2.1.1
CATEGORIES=    	audio
HOMEPAGE=	http://faac.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=	Patents
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Patents
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://faac.sourceforge.net/files/

LIB_DEPENDS=	sndfile:libsndfile->=1.0.1:audio/libsndfile

BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS}
USE_LIBTOOL=	Yes

WRKDIST=	${WRKDIR}/faad2
CONFIGURE_STYLE= automake
AUTOCONF_VERSION=2.13
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		LIBS="-lm" \
		AUTOCONF_VERSION=${AUTOCONF_VERSION}

.if ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=	patch-* gcc-*
.endif

.include <bsd.own.mk>
USE_GCC3?=No
.if ${USE_GCC3:L} == "yes"
MAKE_FLAGS+=libmp4v2_la_LIBADD=-lsupc++
.endif

post-patch:
	@cd ${WRKSRC} && AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		PATH=${PORTPATH} sh bootstrap

.include <bsd.port.mk>
