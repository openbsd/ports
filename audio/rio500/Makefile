# $OpenBSD: Makefile,v 1.4 2000/08/16 18:05:21 jakob Exp $

DISTNAME=		rio500-0.7
CATEGORIES=     	audio
NEED_VERSION=		1.302

MASTER_SITES=		http://download.sourceforge.net/rio500/

HOMEPAGE=		http://sourceforge.net/projects/rio500/

MAINTAINER=		jakob@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=		gtk.1.2::x11/gtk+

ONLY_FOR_ARCHS=		i386

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-devicepath=/dev \
			--with-deviceentry=urio0 \
			--with-id3support

.include <bsd.port.mk>
