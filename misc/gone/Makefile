# $OpenBSD: Makefile,v 1.11 2013/10/11 23:50:10 naddy Exp $

COMMENT=	terminal locking utility

DISTNAME=	gone-1.3.5
CATEGORIES=	misc 

HOMEPAGE=	http://www.marcuscom.com/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=		c

MASTER_SITES=	${HOMEPAGE}/downloads/

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	with_setuid="no"

NO_TEST=	Yes

.include <bsd.port.mk>
