# $OpenBSD: Makefile,v 1.11 2000/08/15 22:15:32 brad Exp $
# $FreeBSD: Makefile,v 1.15 1998/01/25 20:40:00 torstenb Exp $

VERSION=	4.4U
DISTNAME=	ircii-${VERSION}
CATEGORIES=	net
NEED_VERSION=	1.310
MASTER_SITES=	ftp://ircftp.au.eterna.com.au/pub/ircII/

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	"no obvious license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no obvious license"
PERMIT_DISTFILES_FTP=	Yes

SUBST_VARS=	VERSION

USE_BZIP2=	Yes
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-ipv6 --exec-prefix="${PREFIX}"

FAKE_FLAGS=	DESTDIR="${WRKINST}" INSTALL_IRC='$${bindir}/ircII' \
		INSTALL="${INSTALL_PROGRAM}" INSTALL_DATA="${INSTALL_DATA}"

post-install:
	@cd ${PREFIX}/bin && ln -sf ircII-${VERSION} ircII

.include <bsd.port.mk>
