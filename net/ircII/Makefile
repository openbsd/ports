# $OpenBSD: Makefile,v 1.7 2000/04/21 20:03:39 brad Exp $
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
CONFIGURE_ARGS=	--enable-ipv6

FAKE_FLAGS=	DESTDIR="${WRKINST}" \
		INSTALL="${INSTALL_PROGRAM}" INSTALL_DATA="${INSTALL_DATA}"

post-extract:
	@cd ${WRKSRC}/doc; mv ircII.1 irc.1

.include <bsd.port.mk>
