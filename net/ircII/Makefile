# $OpenBSD: Makefile,v 1.8 2000/04/21 22:52:21 espie Exp $
# $FreeBSD: Makefile,v 1.15 1998/01/25 20:40:00 torstenb Exp $

DISTNAME=	ircii-4.4S
CATEGORIES=	net
NEED_VERSION=	1.234
MASTER_SITES=	ftp://ircftp.au.eterna.com.au/pub/ircII/

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	"no obvious license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no obvious license"
PERMIT_DISTFILES_FTP=	Yes

FAKE=	Yes

SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	Yes
CONFIGURE_ARGS=	--enable-ipv6 --exec-prefix=${PREFIX}

FAKE_FLAGS=	DESTDIR='${WRKINST}' INSTALL_IRC='$${bindir}/ircII' \
	INSTALL='${INSTALL_PROGRAM}' INSTALL_DATA='${INSTALL_DATA}' 

# fix bad link
post-install:
	cd ${PREFIX}/bin && rm -f ircII && ln -s ircII-4.4S ircII

.include <bsd.port.mk>
