# $OpenBSD: Makefile,v 1.14 2000/04/09 17:35:57 espie Exp $

BROKEN=		spinlocks in a loop if stdin is null

DISTNAME=	xmcd-2.3
CATEGORIES=	audio
FAKE=No
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR= applications/xmcd

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

USE_MOTIF=	yes
USE_IMAKE=	yes
IS_INTERACTIVE=	yes	# asks a lot of questions
NO_PACKAGE=	interactive port

post-install:
	cp ${WRKSRC}/README ${PREFIX}/lib/X11/xmcd

.include <bsd.port.mk>
