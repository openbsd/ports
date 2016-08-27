# $OpenBSD: Makefile,v 1.24 2016/08/27 16:57:16 ajacoutot Exp $

COMMENT=	creates DVD file structures

DISTNAME=	dvdauthor-0.7.1
CATEGORIES=	multimedia
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=dvdauthor/}

HOMEPAGE=	http://dvdauthor.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += MagickCore-6.Q16 c dvdread fontconfig freetype fribidi
WANTLIB += iconv m png xml2 z

LIB_DEPENDS=	devel/fribidi \
		devel/libdvdread \
		graphics/ImageMagick \
		textproc/libxml

MAKE_FLAGS+=	BISON="yacc"

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

# error: trampoline code generation is not allowed without -ftrampolines
CFLAGS += -ftrampolines

WRKDIST=	${WRKDIR}/dvdauthor

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dvdauthor
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/dvdauthor

.include <bsd.port.mk>
