# $OpenBSD: Makefile,v 1.1.1.1 2000/05/28 20:34:50 jakob Exp $

DISTNAME=		rio500-0.6
CATEGORIES=     	audio
MASTER_SITES=		http://download.sourceforge.net/rio500/

HOMEPAGE=		http://rio500.sourceforge.net/

MAINTAINER=		jakob@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=		gtk.1.2::x11/gtk+

USE_GMAKE=		Yes
GNU_CONFIGURE=		Yes
FAKE=			Yes
CONFIGURE_ARGS+=	--with-devicepath=/dev \
			--with-deviceentry=urio0 \
			--with-id3support

.include <bsd.port.mk>
