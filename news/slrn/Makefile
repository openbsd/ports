# $OpenBSD: Makefile,v 1.16 2000/10/22 14:03:38 espie Exp $

DISTNAME=	slrn-0.9.6.2
CATEGORIES=	news
NEED_VERSION=	1.310
MASTER_SITES=	ftp://space.mit.edu/pub/davis/slrn/ \
		ftp://ftp.uni-stuttgart.de/pub/unix/misc/slang/slrn/

MAINTAINER=	Christopher Turan <turan@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	slang.::devel/libslang

CONFIGURE_STYLE=	gnu

do-install:
	@cd ${WRKBUILD}/src && make ${FAKE_FLAGS} install

post-install:
	@mv -f ${PREFIX}/doc/slrn ${PREFIX}/share/doc/slrn
	@rmdir ${PREFIX}/doc

.include <bsd.port.mk>
