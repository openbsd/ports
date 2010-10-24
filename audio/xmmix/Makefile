# $OpenBSD: Makefile,v 1.31 2010/10/24 21:00:30 ajacoutot Exp $

COMMENT=	Motif-based audio mixer
VERSION=	1.2.2
DISTNAME=	xmmix-${VERSION}
REVISION=	2
CATEGORIES=	audio
HOMEPAGE=	http://www.ibiblio.org/tkan/xmmix/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM Xau Xdmcp X11 Xext Xt c m ossaudio

MASTER_SITES=	http://www.ibiblio.org/tkan/download/xmmix/${VERSION}/src/

CONFIGURE_STYLE=	imake
USE_MOTIF=		any
USE_GROFF =	Yes

WRKDIST=	${WRKDIR}/xmmix-1.2
NO_REGRESS=	Yes

post-install:
	@ perl -pi -e 's,\@PREFIX@,${TRUEPREFIX},;' \
	    ${PREFIX}/lib/X11/app-defaults/XMmix

.include <bsd.port.mk>
