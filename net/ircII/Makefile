# $OpenBSD: Makefile,v 1.13 2000/09/12 16:15:44 brad Exp $
# $FreeBSD: Makefile,v 1.15 1998/01/25 20:40:00 torstenb Exp $

VERSION=	4.4X
DISTNAME=	ircii-${VERSION}
CATEGORIES=	net
NEED_VERSION=	1.328
MASTER_SITES=	ftp://ircftp.au.eterna.com.au/pub/ircII/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SUBST_VARS=	VERSION

FAKE_FLAGS=	DESTDIR="${WRKINST}" INSTALL_IRC='$${bindir}/ircII' \
		INSTALL="${INSTALL_PROGRAM}" INSTALL_DATA="${INSTALL_DATA}"

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-ipv6 --exec-prefix="${PREFIX}"

post-install:
	@cd ${PREFIX}/bin && ln -sf ircII-${VERSION} ircII

.include <bsd.port.mk>
