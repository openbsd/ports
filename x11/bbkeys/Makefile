# $OpenBSD: Makefile,v 1.8 2002/01/28 02:57:49 naddy Exp $

COMMENT=	"X keygrabber for blackbox"

DISTNAME=	bbkeys-0.8.4
CATEGORIES=	x11
NEED_VERSION=	1.504
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= bbkeys

HOMEPAGE=	http://bbkeys.sourceforge.net/

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes

RUN_DEPENDS=	::x11/blackbox

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
