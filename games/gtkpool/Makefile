# $OpenBSD: Makefile,v 1.12 2002/02/19 06:28:31 pvalchev Exp $

COMMENT=	"simple gtk+ pool simulation game"

DISTNAME=	gtkpool-0.4.1
CATEGORIES=	games x11
NEED_VERSION=	1.504
MASTER_SITES=	${HOMEPAGE}	

HOMEPAGE=	http://gtkpool.seul.org/

LIB_DEPENDS=	gtk.1.2,gdk.1.2::x11/gtk+

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

USE_X11=	Yes
NO_REGRESS=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	LDFLAGS="-lossaudio"

post-extract:
	@touch ${WRKSRC}/configure* ${WRKSRC}/*.{in,m4}

.include <bsd.port.mk>
