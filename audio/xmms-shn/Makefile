# $OpenBSD: Makefile,v 1.13 2004/09/14 23:16:56 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	"XMMS input plugin for playing shorten files"

DISTNAME=	xmms-shn-2.4.0
CATEGORIES=	audio
HOMEPAGE=	http://www.etree.org/shnutils/xmms-shn/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}source/

LIB_DEPENDS=	xmms.4::audio/xmms \
		gthread.1.2::devel/glib

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
