# $OpenBSD: Makefile,v 1.15 2000/06/10 17:39:27 espie Exp $

BROKEN=		spinlocks in a loop if stdin is null

DISTNAME=	xmcd-2.3
CATEGORIES=	audio
NEED_VERSION=	1.300
FAKE=No
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR= applications/xmcd

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_MOTIF=		Yes
CONFIGURE_STYLE=	imake
IS_INTERACTIVE=		Yes	# asks a lot of questions
NO_PACKAGE=		interactive port

post-install:
	cp ${WRKSRC}/README ${PREFIX}/lib/X11/xmcd

.include <bsd.port.mk>
