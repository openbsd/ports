# $OpenBSD: Makefile,v 1.8 2002/12/29 19:49:40 fgsch Exp $

COMMENT=	"personal accounts manager"

VERSION=	0.7.5
DISTNAME=	gacc_${VERSION}.orig
PKGNAME=	gacc-${VERSION}
CATEGORIES=	misc productivity

HOMEPAGE=	http://gacc.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${HOMEPAGE}/programmes/

LIB_DEPENDS=	gtk.1.2,gdk.1.2::x11/gtk+

USE_GMAKE=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--datadir=${PREFIX}/share/examples/gacc
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include"

WRKDIST=        ${WRKDIR}/gacc-${VERSION}.orig

.include <bsd.port.mk>
