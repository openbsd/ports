# $OpenBSD: Makefile,v 1.8 2004/12/20 10:35:36 alek Exp $

COMMENT=	"WindowMaker dock app similar to xload"

DISTNAME=	wmmon-1.0b2
CATEGORIES=	sysutils x11 x11/windowmaker

MASTER_SITES=	ftp://ftp.deva.net/pub/sources/X11/windowmaker/dockapps/ \
		ftp://ftp.cadvision.com/pub/linuxberg/files/x11/dock/

MAINTAINER=	Vladimir Popov <pva48@mail.ru>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm c kvm 

USE_X11=	Yes

WRKDIST=	${WRKDIR}/wmmon.app
WRKSRC=		${WRKDIST}/wmmon

NO_REGRESS=	Yes

.include <bsd.port.mk>
