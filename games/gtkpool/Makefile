# $OpenBSD: Makefile,v 1.15 2003/01/05 00:25:48 lebel Exp $

COMMENT=	"simple gtk+ pool simulation game"

DISTNAME=	gtkpool-0.5.0
CATEGORIES=	games x11
MASTER_SITES=	${HOMEPAGE}	

HOMEPAGE=	http://gtkpool.seul.org/

LIB_DEPENDS=	gtk.1.2,gdk.1.2::x11/gtk+

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

# gcc3
MODULES=                gcc3
MODGCC3_ARCHES=         sparc64
MODGCC3_LANGS+=         c++

USE_X11=	Yes
NO_REGRESS=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	LIBS="-lossaudio"

post-extract:
	@touch ${WRKSRC}/configure* ${WRKSRC}/*.in ${WRKSRC}/*.m4

.include <bsd.port.mk>
