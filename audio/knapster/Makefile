# $OpenBSD: Makefile,v 1.8 2001/06/05 10:06:42 reinhard Exp $

COMMENT=		"Napster client for KDE 2"
VERSION=		0.2
DISTNAME=		knapster2-${VERSION}
CATEGORIES=     	audio

HOMEPAGE=		http://knapster.sourceforge.net/

MAINTAINER=		Flinn Mueller <flinn@activeintra.net>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	knapster

LIB_DEPENDS=		kdecore.3::x11/kde/libs2
BUILD_DEPENDS=		uic::x11/qt2-designer

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS+=	--with-qt-includes=${LOCALBASE}/include/X11/qt2
CONFIGURE_ARGS+=	--with-qt-libraries=${LOCALBASE}/lib/qt2
CONFIGURE_ARGS+=	--with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+=	--with-extra-includes=${LOCALBASE}/include

CONFIGURE_ENV=		MOC=${LOCALBASE}/bin/moc2

pre-build:
	@echo ""
	@echo "*** WARNING: you may see an error such as"
	@echo "***       virtual memory exhausted"
	@echo "*** when building this package.  If you do you must increase"
	@echo "*** your limits.  See the man page for your shell and look"
	@echo "*** for the 'limit' or 'ulimit' command."
	@echo ""

.include <bsd.port.mk>
