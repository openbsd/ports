# $OpenBSD: Makefile,v 1.6 2001/09/10 19:04:11 espie Exp $

COMMENT=	"UUCP suite"

DISTNAME=	uucp-1.06.2
CATEGORIES=	net mail
NEED_VERSION=	1.420
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= uucp

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}/uucp-1.06.1

CONFIGURE_STYLE= gnu dest old

MAKE_FLAGS+=	sbindir='$$(PREFIX)/libexec/uucp' \
		newconfigdir=/etc/uucp \
		oldconfigdir=/etc/uucp \
		MAKEINFO='makeinfo --no-split'

FAKE_FLAGS=	DESTDIR=${WRKINST} $(MAKE_FLAGS)

FAKE_TARGET=	install install-info

post-install:
	@mv ${PREFIX}/libexec/uucp/uusched ${PREFIX}/bin
	@chown ${BINOWN}:${BINGRP} ${PREFIX}/bin/cu
	@chmod ${BINMODE} ${PREFIX}/bin/cu

.include <bsd.port.mk>
