# $OpenBSD: Makefile,v 1.13 2006/08/01 12:13:28 espie Exp $

COMMENT=	"Diamond Rio 500 utilities"
DISTNAME=	rio500-0.7
PKGNAME=	${DISTNAME}p0
CATEGORIES=	audio

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=rio500/}

HOMEPAGE=	http://sourceforge.net/projects/rio500/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

LIB_DEPENDS=		glib.>=1.2::devel/glib

ONLY_FOR_ARCHS=		i386

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-devicepath=/dev \
			--with-deviceentry=urio0 \
			--with-id3support

.include <bsd.port.mk>
