# $OpenBSD: Makefile,v 1.17 2001/08/22 02:03:56 brad Exp $
# $FreeBSD: Makefile,v 1.15 1998/01/25 20:40:00 torstenb Exp $

COMMENT=	"Internet Relay Chat client"

VERSION=	4.4Z
DISTNAME=	ircii-${VERSION}
CATEGORIES=	net
NEED_VERSION=	1.435
MASTER_SITES=	ftp://ircftp.au.eterna.com.au/pub/ircII/old_releases/

MAINTAINER=	Brad Smith <brad@openbsd.org>

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
