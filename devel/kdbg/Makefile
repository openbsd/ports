# $OpenBSD: Makefile,v 1.7 2001/04/21 13:04:32 reinhard Exp $

COMMENT=	"graphical debugger for kde"
DISTNAME=	kdbg-1.2.0
CATEGORIES=     devel
NEED_VERSION=	1.312	
HOMEPAGE=	http://members.nextra.at/johsixt/kdbg.html

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.kde.org/pub/kde/stable/1.1.2/apps/ide/ \
		ftp://ftp.eudaptics.com/pub/people/jsixt/

LIB_DEPENDS=	qt.2.::x11/qt2 \
		kdecore.3.::x11/kde/libs2

CONFIGURE_STYLE=	gnu
USE_GMAKE=		Yes
CONFIGURE_ENV+=		MOC=${LOCALBASE}/bin/moc2
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-qt-libraries="${LOCALBASE}/lib/qt2" \
			--with-qt-includes="${LOCALBASE}/include/X11/qt2" \
			--with-extra-includes="${LOCALBASE}/include" \
			--with-extra-libs="${LOCALBASE}/lib" \
			--with-kde-version=2 
			
#			--enable-debug \
#			--disable-nls \
#			--enable-lots-a-trace --with-transcript=transcript

.include <bsd.port.mk>
