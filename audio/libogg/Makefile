# $OpenBSD: Makefile,v 1.6 2001/10/08 14:57:55 naddy Exp $

COMMENT=	"Ogg bitstream library"
DISTNAME=	libogg-1.0rc2
CATEGORIES=    	audio
NEED_VERSION=	1.435
HOMEPAGE=	http://www.xiph.org/ogg/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.vorbis.com/files/rc2/unix/

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltconfig \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltmain_sh \
		patch-*

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static

.include <bsd.port.mk>
