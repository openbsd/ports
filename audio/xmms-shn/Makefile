# $OpenBSD: Makefile,v 1.9 2002/11/01 14:37:50 naddy Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"XMMS input plugin for playing shorten files"

DISTNAME=	xmms-shn-2.2.7
CATEGORIES=	audio
HOMEPAGE=	http://shnutils.freeshell.org/xmms-shn/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}source/

LIB_DEPENDS=	xmms.3::audio/xmms \
		gthread.1.2::devel/glib

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
