# $OpenBSD: Makefile,v 1.6 1999/11/12 07:06:03 turan Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

DISTNAME=	slrn-0.9.5.7
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
