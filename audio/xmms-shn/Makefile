# $OpenBSD: Makefile,v 1.2 2001/08/21 15:19:16 naddy Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"XMMS input plugin for playing shorten files"

DISTNAME=	xmms-shn-2.2.4
CATEGORIES=	audio
NEED_VERSION=	1.440
HOMEPAGE=	http://shnutils.etree.org/xmms-shn/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}source/

LIB_DEPENDS=	xmms.2::audio/xmms

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
