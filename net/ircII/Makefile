# $OpenBSD: Makefile,v 1.25 2003/10/18 11:41:22 naddy Exp $
# $FreeBSD: Makefile,v 1.15 1998/01/25 20:40:00 torstenb Exp $

COMMENT=	"Internet Relay Chat client"

VERSION=	20030709
DISTNAME=	ircii-${VERSION}
PKGNAME=	ircII-${VERSION}
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.warped.com/pub/ircII/ \
		ftp://ircftp.au.eterna.com.au/pub/ircII/ \
		ftp://ftp.warped.com/pub/ircII/old/ \
		ftp://ircftp.au.eterna.com.au/pub/ircII/old/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	Brad Smith <brad@openbsd.org>

HOMEPAGE=	http://www.eterna.com.au/ircii/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SUBST_VARS=	VERSION

FAKE_FLAGS=	DESTDIR="${WRKINST}" INSTALL_IRC='$${bindir}/ircII' \
		INSTALL="${INSTALL_PROGRAM}" INSTALL_DATA="${INSTALL_DATA}"

NO_REGRESS=	Yes

SEPARATE_BUILD=	simple
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-ipv6 --exec-prefix="${PREFIX}"

post-install:
	@mv ${PREFIX}/bin/ircII-${VERSION} ${PREFIX}/bin/ircII

.include <bsd.port.mk>
