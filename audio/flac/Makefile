# $OpenBSD: Makefile,v 1.14 2002/07/07 19:09:28 naddy Exp $

COMMENT=	"free lossless audio codec"

DISTNAME=	flac-1.0.3
CATEGORIES=	audio archivers
HOMEPAGE=	http://flac.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=flac/}

LIB_DEPENDS=	ogg.3::audio/libogg

.if ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	::devel/nasm
.endif

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-ogg=${LOCALBASE} \
		--enable-sse --enable-3dnow
CONFIGURE_ENV=	XMMS_CONFIG=/usr/bin/false

post-install:
	@cd ${PREFIX}/share/doc && mv ${DISTNAME} flac

.include <bsd.port.mk>
