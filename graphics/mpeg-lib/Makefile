# $OpenBSD: Makefile,v 1.14 2000/03/08 01:13:13 espie Exp $

DISTNAME=	mpeg_lib-1.3.1
CATEGORIES=	graphics
NEED_VERSION=	1.218
MASTER_SITES=	ftp://ftp.bic.mni.mcgill.ca/pub/mpeg/ \
		http://starship.python.net/~gward/mpeglib/


MAINTAINER=	brad@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=		Yes
HAS_CONFIGURE=	Yes
CONFIGURE_ARGS=	--prefix='$${DESTDIR}${PREFIX}' --sysconfdir='${DESTDIR}/etc'

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) & ${NO_SHARED_LIBS:U} == YES
MAKE_ENV=	NO_SHARED_LIBS=Yes
.endif
