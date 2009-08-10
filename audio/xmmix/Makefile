# $OpenBSD: Makefile,v 1.27 2009/08/10 06:29:52 kili Exp $

COMMENT=	Motif-based audio mixer
VERSION=	1.2.2
DISTNAME=	xmmix-${VERSION}
PKGNAME=	${DISTNAME}p1
CATEGORIES=	audio
HOMEPAGE=	http://www.ibiblio.org/tkan/xmmix/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM Xau Xdmcp X11 Xext Xt c ossaudio pthread-stubs xcb

MASTER_SITES=	http://www.ibiblio.org/tkan/download/xmmix/${VERSION}/src/

CONFIGURE_STYLE=	imake
USE_MOTIF=		any
USE_X11=		Yes

WRKDIST=	${WRKDIR}/xmmix-1.2
NO_REGRESS=	Yes

post-install:
	@ perl -pi -e 's,\@PREFIX@,${TRUEPREFIX},;' \
	    ${PREFIX}/lib/X11/app-defaults/XMmix

.include <bsd.port.mk>
