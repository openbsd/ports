# $OpenBSD: Makefile,v 1.1.1.1 2000/04/10 15:46:05 jakob Exp $

DISTNAME=		knapster-0.9
CATEGORIES=     	audio

HOMEPAGE=		http://knapster.netpedia.net/

MAINTAINER=		jakob@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://knapster.netpedia.net/packages/

LIB_DEPENDS=		kdecore.1::x11/kde/libs

USE_GMAKE=		Yes
GNU_CONFIGURE=		Yes
CONFIGURE_ARGS+=	--with-qt-includes=${PREFIX}/include/X11/qt \
			--with-qt-libraries=${PREFIX}/lib
FAKE=			Yes

.include <bsd.port.mk>
