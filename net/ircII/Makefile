# $OpenBSD: Makefile,v 1.6 2000/03/26 09:55:32 brad Exp $
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

SEPARATE_BUILD=	Yes
GNU_CONFIGURE=	Yes
CONFIGURE_ARGS=	--enable-ipv6

FAKE_FLAGS=	DESTDIR="${WRKINST}" \
		INSTALL="${INSTALL_PROGRAM}" INSTALL_DATA="${INSTALL_DATA}"

.include <bsd.port.mk>
