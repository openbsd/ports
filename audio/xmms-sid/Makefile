# $OpenBSD: Makefile,v 1.1.1.1 2002/05/22 22:47:46 naddy Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"XMMS input plugin for playing SID files"

DISTNAME=	xmms-sid-0.7.3
CATEGORIES=	audio
NEED_VERSION=	1.530
HOMEPAGE=	http://www.tnsp.org/xmms-sid.php

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.tnsp.org/xs-files/

LIB_DEPENDS=	xmms.3::audio/xmms \
		sidplay.1::audio/libsidplay

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-sidplay-prefix=${LOCALBASE}

.include <bsd.port.mk>
