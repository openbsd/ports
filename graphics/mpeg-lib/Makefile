# $OpenBSD: Makefile,v 1.16 2000/06/15 18:48:57 brad Exp $

DISTNAME=	mpeg_lib-1.3.1
CATEGORIES=	graphics
NEED_VERSION=	1.301
MASTER_SITES=	ftp://ftp.bic.mni.mcgill.ca/pub/mpeg/ \
		http://starship.python.net/~gward/mpeglib/

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu dest

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) & ${NO_SHARED_LIBS:U} == YES
MAKE_ENV=	NO_SHARED_LIBS=Yes
.endif
