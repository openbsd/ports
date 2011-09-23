# $OpenBSD: Makefile,v 1.14 2011/09/23 11:01:28 dcoppa Exp $

COMMENT=		console based player for last.fm radio streams

DISTNAME=		shell-fm-0.8
REVISION=		1
CATEGORIES=		audio

HOMEPAGE=		http://nex.scrapping.cc/shell-fm/

MAINTAINER=		David Coppa <dcoppa@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB +=		ao c m mad tag tag_c

MASTER_SITES=		http://distfiles.nl/

LIB_DEPENDS=		audio/libao \
			audio/libmad \
			audio/taglib

USE_GMAKE=		Yes

FAKE_FLAGS=		INSTALL_MAN="${INSTALL_MAN}" \
			INSTALL_PROGRAM="${INSTALL_PROGRAM}"

NO_REGRESS=		Yes

.include <bsd.port.mk>
