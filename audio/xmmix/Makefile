# $OpenBSD: Makefile,v 1.20 2002/10/24 22:20:04 naddy Exp $

COMMENT=	"Motif-based audio mixer"
DISTNAME=	xmmix-1.2.2
CATEGORIES=	audio
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
NO_REGRESS=	Yes

post-install:
	@ perl -pi -e 's,\@PREFIX@,${TRUEPREFIX},;' \
	    ${PREFIX}/lib/X11/app-defaults/XMmix

.include <bsd.port.mk>
