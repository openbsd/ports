# $OpenBSD: Makefile,v 1.22 2000/03/15 07:47:55 jakob Exp $

DISTNAME=	ethereal-0.8.4
CATEGORIES=	net x11
NEED_VERSION=	1.223
MASTER_SITES=	http://ethereal.zing.org/distribution/ \
		http://ethereal.boehm.org/distribution/ \
		http://ethereal.zing.org/distribution/old-versions/ \
		http://ethereal.boehm.org/distribution/old-versions/

MAINTAINER=     jakob@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=		Yes

LIB_DEPENDS=	glib.1.2:devel/glib \
		gtk.1.2:x11/gtk+

USE_X11=	Yes
SYSCONFDIR=	${PREFIX}/share/ethereal
SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	Yes
CONFIGURE_ARGS=	--sysconfdir=${SYSCONFDIR}

.include <bsd.port.mk>
