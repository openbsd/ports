# $OpenBSD: Makefile,v 1.4 2004/10/09 14:47:09 sturm Exp $

COMMENT=	"interactive geometry program"

DISTNAME=	drgeo-0.9.13
CATEGORIES=	education math

HOMEPAGE=	http://www.ofset.org/drgeo/	

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ofset/}

MODULES=	devel/gettext

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	glade-2.0.=0::devel/libglade2 \
		guile::lang/guile

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
