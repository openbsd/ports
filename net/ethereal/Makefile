# $OpenBSD: Makefile,v 1.27 2000/06/08 06:02:16 jakob Exp $

DISTNAME=	ethereal-0.8.9
CATEGORIES=	net x11
NEED_VERSION=	1.230
MASTER_SITES=	http://ethereal.zing.org/distribution/ \
		http://ethereal.boehm.org/distribution/ \
		http://ethereal.zing.org/distribution/old-versions/ \
		http://ethereal.boehm.org/distribution/old-versions/

LIB_DEPENDS=	gtk.1.2::x11/gtk+

MAINTAINER=     jakob@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=		Yes

USE_X11=	Yes
SYSCONFDIR=	${PREFIX}/share/ethereal
SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	Yes

.include <bsd.port.mk>
