# $OpenBSD: Makefile,v 1.2 2000/04/05 13:19:05 kevlo Exp $

DISTNAME=		kdbg-1.0.2
CATEGORIES=     	devel
NEED_VERSION=		1.230	

HOMEPAGE=		members.telecom.at/~johsixt/kdbgdownload.html

MAINTAINER=		seanc@cginfo.sk.ca

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://members.telecom.at/~johsixt/ \
			ftp://ftp.kde.org/pub/kde/stable/1.1.2/apps/ide/ \
			ftp://ftp.eudaptics.com/pub/people/jsixt/

LIB_DEPENDS=		qt.1.45::x11/qt \
			kdecore.1::x11/kde/libs

SEPARATE_BUILD=	concurrent
USE_GMAKE=		Yes
GNU_CONFIGURE=		Yes
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-qt-libraries="${LOCALBASE}/lib" \
			--with-qt-includes="${LOCALBASE}/include/X11/qt" \
			--with-extra-includes="${LOCALBASE}/include" \
			--with-extra-libs="${LOCALBASE}/lib"

FAKE=			Yes

.include <bsd.port.mk>
