# $OpenBSD: Makefile,v 1.11 2000/01/09 05:56:33 brad Exp $

DISTNAME=	mpeg_lib-1.3.1
CATEGORIES=	graphics
MASTER_SITES=	ftp://ftp.bic.mni.mcgill.ca/pub/mpeg/ \
		http://starship.python.net/~gward/mpeglib/

NEED_VERSION=	1.73

MAINTAINER=	brad@openbsd.org

GNU_CONFIGURE=	yes

post-install:
	@${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) & ${NO_SHARED_LIBS:U} == YES
MAKE_ENV=	NO_SHARED_LIBS=Yes
.endif
