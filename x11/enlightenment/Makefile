# $OpenBSD: Makefile,v 1.29 2002/05/15 17:58:51 espie Exp $

COMMENT=	"themed window manager"

DISTNAME=	enlightenment-0.16.5
CATEGORIES=	x11
NEED_VERSION=	1.489
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=enlightenment/} \
		ftp://ftp.squish.org/pub/enlightenment/enlightenment/ \
		ftp://ftp.dti.ad.jp/pub/X/enlightenment/enlightenment/ 

HOMEPAGE=	http://www.enlightenment.org/

LIB_DEPENDS=	esd.2::audio/esound \
		Fnlib.5::graphics/fnlib \
		ghttp.1::www/libghttp \
		ttf.1.3::print/freetype

MAINTAINER=	Paul Wang <op21@squish.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
USE_GMAKE=	Yes
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-fsstd
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include -I${LOCALBASE}/include/freetype" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

.include <bsd.port.mk>
