# $OpenBSD: Makefile,v 1.32 2002/12/29 20:31:39 fgsch Exp $

COMMENT=		"SLang-based newsreader"

VERSION=		0.9.7.4
DISTNAME=		slrn-${VERSION}
PKGNAME=		${DISTNAME}
CATEGORIES=		news

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=slrn/}
HOMEPAGE=		http://www.slrn.org/

MAINTAINER=		David Lebel <lebel@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

PFILES=			strcasecmp link_subjects po mem_leak popup_win
MASTER_SITES0=  	http://slrn.sourceforge.net/patches/
.for i in ${PFILES}
PATCHFILES+=    	slrn-${VERSION}-$i.diff:0
.endfor
PATCH_DIST_STRIP=-p1

NO_REGRESS=		Yes
USE_GMAKE=		Yes
LIB_DEPENDS=		slang.::devel/libslang

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-inews --with-ssl

.include <bsd.port.mk>
