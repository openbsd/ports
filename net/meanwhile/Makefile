# $OpenBSD: Makefile,v 1.5 2007/09/15 22:36:55 merdely Exp $

COMMENT=	implementation of Lotus Sametime Community Client protocol

DISTNAME=	meanwhile-1.0.2
PKGNAME=	${DISTNAME}p0
SHARED_LIBS=	meanwhile 1.2
CATEGORIES=	devel

HOMEPAGE=	http://meanwhile.sourceforge.net/

# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
WANTLIB=		m

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=meanwhile/}

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-mailme=no \
		--enable-doxygen=no

MODULES=	devel/gettext
LIB_DEPENDS=	glib-2.0.>=800.0::devel/glib2

USE_LIBTOOL=	Yes

.include <bsd.port.mk>
