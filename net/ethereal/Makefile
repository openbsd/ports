# $OpenBSD: Makefile,v 1.30 2000/08/13 06:24:59 jakob Exp $

DISTNAME=	ethereal-0.8.11
CATEGORIES=	net x11
NEED_VERSION=	1.302

MASTER_SITES=	http://ethereal.zing.org/distribution/ \
		http://ethereal.boehm.org/distribution/ \
		http://ethereal.zing.org/distribution/old-versions/ \
		http://ethereal.boehm.org/distribution/old-versions/

HOMEPAGE=	http://ethereal.zing.org/

LIB_DEPENDS=	gtk.1.2::x11/gtk+

MAINTAINER=     jakob@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
SYSCONFDIR=		${PREFIX}/share/ethereal
SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-snmp

.include <bsd.port.mk>
