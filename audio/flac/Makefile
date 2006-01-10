# $OpenBSD: Makefile,v 1.26 2006/01/10 11:14:49 espie Exp $

COMMENT=	"free lossless audio codec"

DISTNAME=	flac-1.1.2
PKGNAME=	${DISTNAME}p0
CATEGORIES=	audio archivers
HOMEPAGE=	http://flac.sourceforge.net/
SHARED_LIBS=	FLAC++		5.0 \
		FLAC		7.0 \
		OggFLAC++	2.0 \
		OggFLAC		3.0

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD, GPL, GFDL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=flac/}

WANTLIB=	c m

MODULES=	converters/libiconv
LIB_DEPENDS=	ogg.5::audio/libogg

.if ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	::devel/nasm
.endif

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-libiconv-prefix="${LOCALBASE}" \
		--with-ogg="${LOCALBASE}"
CONFIGURE_ENV=	CPPFLAGS="-I${WRKSRC}/include" \
		ac_cv_path_XMMS_CONFIG=no

# "obj" is magic to our make(1)
post-configure:
	@rm -rf ${WRKSRC}/obj

post-install:
	@cd ${PREFIX}/share/doc && mv ${DISTNAME} flac

.include <bsd.port.mk>
