# $OpenBSD: Makefile,v 1.8 2010/10/18 20:52:09 espie Exp $

COMMENT=	terminal locking utility

DISTNAME=	gone-1.3.5
CATEGORIES=	misc 

HOMEPAGE=	http://www.marcuscom.com/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c

MASTER_SITES=	${HOMEPAGE}/downloads/

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	with_setuid="no"

USE_GROFF =	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
