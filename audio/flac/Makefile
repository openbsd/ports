# $OpenBSD: Makefile,v 1.17 2003/02/25 00:02:38 naddy Exp $

COMMENT=	"free lossless audio codec"

DISTNAME=	flac-1.0.4
CATEGORIES=	audio archivers
HOMEPAGE=	http://flac.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=flac/}

MODULES=	iconv
BUILD_DEPENDS=	::converters/libiconv:extract
LIB_DEPENDS=	ogg.4::audio/libogg

.if ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	::devel/nasm
.endif

CONFIGURE_STYLE= gnu

# id3lib is only used by the XMMS plugin
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-3dnow \
		--with-libiconv-prefix="${LOCALBASE}" \
		--with-ogg="${LOCALBASE}"
CONFIGURE_ENV=	XMMS_CONFIG=/usr/bin/false \
		CPPFLAGS="-I${WRKSRC}/include"

# missing auxiliary script
post-extract:
	@cp ${WRKDIR}/converters/libiconv/libiconv-*/autoconf/config.rpath \
		${WRKSRC}

# "obj" is magic to our make(1)
post-configure:
	@rm -rf ${WRKSRC}/obj

post-install:
	@cd ${PREFIX}/share/doc && mv ${DISTNAME} flac

.include <bsd.port.mk>
