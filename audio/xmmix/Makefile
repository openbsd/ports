# $OpenBSD: Makefile,v 1.19 2002/01/17 15:18:07 naddy Exp $

COMMENT=	"Motif-based audio mixer"
DISTNAME=	xmmix-1.2.2
CATEGORIES=	audio
NEED_VERSION=	1.504
HOMEPAGE=	http://www.ibiblio.org/tkan/xmmix/

MAINTAINER=	Dan Weeks <danimal@danimal.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.ibiblio.org/tkan/download/xmmix/src/

CONFIGURE_STYLE=	imake
USE_MOTIF=		any

WRKDIST=	${WRKDIR}/xmmix-1.2

post-install:
	@ perl -pi -e 's,\@PREFIX@,${TRUEPREFIX},;' \
	    ${PREFIX}/lib/X11/app-defaults/XMmix

.include <bsd.port.mk>
