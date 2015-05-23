# $OpenBSD: Makefile,v 1.3 2015/05/23 16:34:40 czarkoff Exp $

COMMENT=	network time synchronization software

DISTNAME=	ntimed-0.0.2015.01.17
CATEGORIES=	net

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

GH_ACCOUNT=	bsdphk
GH_PROJECT=	Ntimed
GH_COMMIT=	db0abbb4c80f2ecef6bc5d9639bca5bea28532a2

WANTLIB=	c m

CONFIGURE_STYLE=simple

MAKE_ENV=	NOMAN=noman \
		BINDIR=${PREFIX}/sbin

pre-configure:
	@chmod +x ${WRKSRC}/${CONFIGURE_SCRIPT}

NO_TEST=	Yes

.include <bsd.port.mk>
