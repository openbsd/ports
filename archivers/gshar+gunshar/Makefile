# $OpenBSD: Makefile,v 1.11 2000/03/26 16:51:22 espie Exp $

DISTNAME=	sharutils-4.2
CATEGORIES=	archivers
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= sharutils

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HAS_CONFIGURE=	yes
CONFIGURE_ARGS=		--prefix='$${DESTDIR}${PREFIX}' \
			--sysconfdir='$${DESTDIR}/etc' \
			--program-prefix=g --disable-uucode --disable-nls

FAKE=			Yes

post-patch:
	@touch ${WRKSRC}/po/sharutils.pot

post-install:
	@strip ${PREFIX}/bin/gshar
	@strip ${PREFIX}/bin/gunshar

.include <bsd.port.mk>
