# $OpenBSD: Makefile,v 1.9 2001/10/28 12:30:13 espie Exp $

COMMENT=	"graphical debugger for kde"
DISTNAME=	kdbg-1.2.2
CATEGORIES=     devel
NEED_VERSION=	1.483
HOMEPAGE=	http://members.nextra.at/johsixt/kdbg.html

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.kde.org/pub/kde/stable/1.1.2/apps/ide/ \
		ftp://ftp.eudaptics.com/pub/people/jsixt/

MODULES=	qt2
LIB_DEPENDS=	kdecore.3.::x11/kde/libs2

CONFIGURE_STYLE=	gnu
USE_GMAKE=		Yes
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			${MODQT_CONFIGURE_ARGS} \
			--with-extra-includes="${LOCALBASE}/include" \
			--with-extra-libs="${LOCALBASE}/lib" \
			--with-kde-version=2 
			
#			--enable-debug \
#			--disable-nls \
#			--enable-lots-a-trace --with-transcript=transcript

.include <bsd.port.mk>
