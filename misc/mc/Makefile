# $OpenBSD: Makefile,v 1.18 2004/04/11 10:06:00 sturm Exp $

COMMENT=		"free Norton Commander clone with many useful features"

DISTNAME=		mc-4.6.1-pre1
PKGNAME=		${DISTNAME:S,-pre1,pre1,}
CATEGORIES=		misc

HOMEPAGE=		http://www.ibiblio.org/mc/
MASTER_SITES=		http://www.ibiblio.org/pub/Linux/utils/file/managers/mc/
MAINTAINER=		Robert Nagy <thuglife@bsd.hu>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		gettext
BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=		glib-2.0.0.8,gmodule-2.0.0.8::devel/glib2
RUN_DEPENDS=		:unzip-*:archivers/unzip \
			:zip-*:archivers/zip

CONFIGURE_STYLE=	gnu	
CONFIGURE_ARGS=		--with-vfs --without-mcfs --enable-charset
CONFIGURE_ENV=		LOCALBASE=${LOCALBASE}

.include <bsd.port.mk>
