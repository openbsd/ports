# $OpenBSD: Makefile,v 1.5 1999/11/03 01:20:47 turan Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

BROKEN=		sources moved

DISTNAME=	slrn-0.9.5.6
CATEGORIES=	news

MAINTAINER=	turan@openbsd.org

MASTER_SITES=	ftp://space.mit.edu/pub/davis/slrn/ \
		ftp://ftp.uni-stuttgart.de/pub/unix/misc/slang/slrn/

BUILD_DEPENDS=	${PREFIX}/lib/libslang.a:${PORTSDIR}/devel/libslang

GNU_CONFIGURE=	yes

post-install:
	@${MV} -f ${PREFIX}/doc/slrn ${PREFIX}/share/doc/slrn
	@rmdir ${PREFIX}/doc

.include <bsd.port.mk>
