# $OpenBSD: Makefile,v 1.5 2001/01/22 21:55:27 naddy Exp $

DISTNAME=	kdbg-1.0.2
CATEGORIES=     devel
NEED_VERSION=	1.312	
HOMEPAGE=	http://members.nextra.at/johsixt/kdbg.html

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.kde.org/pub/kde/stable/1.1.2/apps/ide/ \
		ftp://ftp.eudaptics.com/pub/people/jsixt/

LIB_DEPENDS=	qt.1.45::x11/qt \
		kdecore.1::x11/kde/libs

CONFIGURE_STYLE=	gnu
USE_GMAKE=		Yes
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-qt-libraries="${LOCALBASE}/lib" \
			--with-qt-includes="${LOCALBASE}/include/X11/qt" \
			--with-extra-includes="${LOCALBASE}/include" \
			--with-extra-libs="${LOCALBASE}/lib"

.include <bsd.port.mk>
