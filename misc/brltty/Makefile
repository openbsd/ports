# $OpenBSD: Makefile,v 1.1.1.1 2003/11/22 00:57:55 espie Exp $

COMMENT=	"access software for a blind person using a braille terminal"

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}
DISTNAME=	brltty-3.3.1
CATEGORIES=	misc
MASTER_SITES=	http://mielke.cc/brltty/releases/
HOMEPAGE=	http://mielke.cc/brltty/
MAINTAINER=	Mario Lang <mlang@delysid.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		:screen-*-shm:misc/screen,shm
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-install-root=${WRKINST}

NO_REGRESS=	Yes

SEPARATE_BUILD=	concurrent

.include <bsd.port.mk>

