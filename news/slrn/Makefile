# $OpenBSD: Makefile,v 1.4 1999/06/23 05:24:10 marc Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

DISTNAME=	slrn-0.9.5.6
CATEGORIES=	news

MAINTAINER=	ports@OpenBSD.ORG

MASTER_SITES=	ftp://space.mit.edu/pub/davis/slrn/ \
		ftp://ftp.uni-stuttgart.de/pub/unix/misc/slang/slrn/

BUILD_DEPENDS=	${PREFIX}/lib/libslang.a:${PORTSDIR}/devel/libslang

GNU_CONFIGURE=	yes

post-install:
	@${MV} -f ${PREFIX}/doc/slrn ${PREFIX}/share/doc/slrn
	@rmdir ${PREFIX}/doc

.include <bsd.port.mk>
