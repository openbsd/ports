# $OpenBSD: Makefile,v 1.2 2000/10/09 07:43:57 kevlo Exp $

DISTNAME=	gAcc-0.7.2
CATEGORIES=	misc
NEED_VERSION=	1.319

MASTER_SITES=	http://gacc.sourceforge.net/programmes/

HOMEPAGE=	http://gacc.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

LIB_DEPENDS=	gtk.1.2::x11/gtk+

USE_X11=	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-configfile=.gaccrc \
			--datadir=${PREFIX}/share/examples/gAcc

.include <bsd.port.mk>
