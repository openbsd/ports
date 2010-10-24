# $OpenBSD: Makefile,v 1.6 2010/10/24 21:15:36 ajacoutot Exp $

COMMENT=	fake keyboard and mouse input

DISTNAME=	xdotool-20090126
REVISION=	0

CATEGORIES=	x11

HOMEPAGE=	http://www.semicomplete.com/projects/xdotool/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://semicomplete.googlecode.com/files/

USE_GROFF =	Yes
WANTLIB=		X11 Xau Xdmcp Xext Xtst c \
			pthread-stubs xcb
REGRESS_IS_INTERACTIVE=	Yes

do-regress:
	cd ${WRKSRC} && /bin/sh ./t/no_crashes_please.sh
.include <bsd.port.mk>
