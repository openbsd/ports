# $OpenBSD: Makefile,v 1.21 2004/10/08 08:22:28 xsa Exp $

COMMENT=	"Motif-based audio mixer"
DISTNAME=	xmmix-1.2.2
CATEGORIES=	audio
HOMEPAGE=	http://www.ibiblio.org/tkan/xmmix/

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
