# $OpenBSD: Makefile,v 1.9 2002/10/28 01:38:46 naddy Exp $

COMMENT=	"UUCP suite"

DISTNAME=	uucp-1.06.2
CATEGORIES=	net mail
MASTER_SITES=	${MASTER_SITE_GNU:=uucp/}

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

NO_REGRESS=	Yes

FAKE_FLAGS=	DESTDIR=${WRKINST} $(MAKE_FLAGS)
FAKE_TARGET=	install install-info

post-install:
	@mv ${PREFIX}/libexec/uucp/uusched ${PREFIX}/bin
	@chown ${BINOWN}:${BINGRP} ${PREFIX}/bin/cu
	@chmod ${BINMODE} ${PREFIX}/bin/cu

.include <bsd.port.mk>
