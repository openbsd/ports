# $OpenBSD: Makefile,v 1.21 2005/02/19 21:48:47 alek Exp $

COMMENT=	"free lossless audio codec"

DISTNAME=	flac-1.1.0
PKGNAME=	${DISTNAME}p0
CATEGORIES=	audio archivers
HOMEPAGE=	http://flac.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# (L)GPL, GFDL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=flac/}

MODULES=	converters/libiconv
LIB_DEPENDS=	ogg.4::audio/libogg

.if ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	::devel/nasm
.endif

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-3dnow \
		--with-libiconv-prefix="${LOCALBASE}" \
		--with-ogg="${LOCALBASE}"
CONFIGURE_ENV=	CPPFLAGS="-I${WRKSRC}/include" \
		XMMS_CONFIG=/usr/bin/false

# "obj" is magic to our make(1)
post-configure:
	@rm -rf ${WRKSRC}/obj

post-install:
	@cd ${PREFIX}/share/doc && mv ${DISTNAME} flac

.include <bsd.port.mk>
