# $OpenBSD: Makefile,v 1.12 2000/02/12 06:29:55 turan Exp $

DISTNAME=	mpeg_lib-1.3.1
CATEGORIES=	graphics
MASTER_SITES=	ftp://ftp.bic.mni.mcgill.ca/pub/mpeg/ \
		http://starship.python.net/~gward/mpeglib/

NEED_VERSION=	1.73

MAINTAINER=	brad@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

GNU_CONFIGURE=	yes

post-install:
	@${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) & ${NO_SHARED_LIBS:U} == YES
MAKE_ENV=	NO_SHARED_LIBS=Yes
.endif
