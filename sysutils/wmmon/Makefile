# $OpenBSD: Makefile,v 1.7 2003/03/31 14:49:13 sturm Exp $

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

USE_X11=	Yes

WRKDIST=	${WRKDIR}/wmmon.app
WRKSRC=		${WRKDIST}/wmmon

NO_REGRESS=	Yes

.include <bsd.port.mk>
