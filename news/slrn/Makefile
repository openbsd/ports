# $OpenBSD: Makefile,v 1.23 2001/07/22 00:18:14 lebel Exp $

COMMENT=		"SLang-based newsreader"

VERSION=		0.9.7.1
DISTNAME=		slrn-${VERSION}p1
CATEGORIES=		news
NEED_VERSION=		1.364

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	slrn
HOMEPAGE=		http://www.slrn.org/

MAINTAINER=		David Lebel <lebel@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

PFILES=			xhdr_spool readcount include decode readfail makefile 
MASTER_SITES0=  	http://slrn.sourceforge.net/patches/
.for i in ${PFILES}
PATCHFILES+=    	slrn-${VERSION}-$i.diff:0
.endfor
PATCH_DIST_STRIP=-p1

LIB_DEPENDS=		slang.::devel/libslang

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-inews --with-ssl

.include <bsd.port.mk>
