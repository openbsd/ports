# $OpenBSD: Makefile,v 1.26 2001/08/30 13:56:47 lebel Exp $

COMMENT=		"SLang-based newsreader"

VERSION=		0.9.7.2
DISTNAME=		slrn-${VERSION}
PKGNAME=		${DISTNAME}p1
CATEGORIES=		news
NEED_VERSION=		1.440

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	slrn
HOMEPAGE=		http://www.slrn.org/

MAINTAINER=		David Lebel <lebel@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

PFILES=			readactive forceauth authneeded newsurl
MASTER_SITES0=  	http://slrn.sourceforge.net/patches/
.for i in ${PFILES}
PATCHFILES+=    	slrn-${VERSION}-$i.diff:0
.endfor
PATCH_DIST_STRIP=-p1

USE_GMAKE=		Yes
LIB_DEPENDS=		slang.::devel/libslang

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-inews --with-ssl

.include <bsd.port.mk>
