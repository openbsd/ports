# $OpenBSD: Makefile,v 1.13 2000/03/24 23:28:29 espie Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

DISTNAME=	slrn-0.9.6.2
CATEGORIES=	news
NEED_VERSION=	 1.230

MAINTAINER=	turan@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://space.mit.edu/pub/davis/slrn/ \
		ftp://ftp.uni-stuttgart.de/pub/unix/misc/slang/slrn/

LIB_DEPENDS=	${PREFIX}/lib/libslang.a::devel/libslang

GNU_CONFIGURE=	Yes

post-install:
	@mv -f ${PREFIX}/doc/slrn ${PREFIX}/share/doc/slrn
	@rmdir ${PREFIX}/doc

.include <bsd.port.mk>
