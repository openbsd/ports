# $OpenBSD: Makefile,v 1.3 2001/12/20 14:12:00 kevlo Exp $

COMMENT=	"gtk-based icq 2000 client"

DISTNAME=	ickle-0.1.2
CATEGORIES=	net
NEED_VERSION=	1.480
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	ickle

HOMEPAGE=	http://ickle.sourceforge.net

MAINTAINER=	Federico Schwindt <fgsch@openbsd.org>

LIB_DEPENDS=	gdkmm.2,gtkmm.2::x11/gtkmm

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes

CONFIGURE_STYLE= 	gnu

post-patch:
	@mv ${WRKSRC}/icons ${WRKSRC}/icons.old; \
	mv ${WRKSRC}/icons.icq ${WRKSRC}/icons

.include <bsd.port.mk>
