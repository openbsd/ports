# $OpenBSD: Makefile,v 1.10 2000/02/16 10:52:12 espie Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

DISTNAME=	slrn-0.9.6.2
CATEGORIES=	news

MAINTAINER=	turan@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

MASTER_SITES=	ftp://space.mit.edu/pub/davis/slrn/ \
		ftp://ftp.uni-stuttgart.de/pub/unix/misc/slang/slrn/

BUILD_DEPENDS=	${PREFIX}/lib/libslang.a:${PORTSDIR}/devel/libslang

GNU_CONFIGURE=	yes

post-install:
	@mv -f ${PREFIX}/doc/slrn ${PREFIX}/share/doc/slrn
	@rmdir ${PREFIX}/doc

.include <bsd.port.mk>
