# $OpenBSD: Makefile,v 1.13 2002/04/19 14:43:36 pvalchev Exp $

COMMENT=		"Napster client for KDE 2"
VERSION=		0.3
DISTNAME=		knapster2-${VERSION}
CATEGORIES=     	audio
NEED_VERSION=		1.489

HOMEPAGE=		http://knapster.sourceforge.net/

MAINTAINER=		Flinn Mueller <flinn@activeintra.net>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	knapster

LIB_DEPENDS=		kdecore.3::x11/kde/libs2 \
			gdk.1.2::x11/gtk+
BUILD_DEPENDS=		::x11/qt2-designer

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS+=	--with-qt-includes=${LOCALBASE}/include/X11/qt2
CONFIGURE_ARGS+=	--with-qt-libraries=${LOCALBASE}/lib/qt2
CONFIGURE_ARGS+=	--with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+=	--with-extra-includes=${LOCALBASE}/include

CONFIGURE_ENV=		MOC=${LOCALBASE}/bin/moc2

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/admin

VMEM_WARNING=		Yes

.include <bsd.port.mk>
