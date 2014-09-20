# $OpenBSD: Makefile,v 1.43 2014/09/20 18:40:27 naddy Exp $

COMMENT=	Internet Relay Chat client

VERSION=	20140831
DISTNAME=	ircii-${VERSION}
PKGNAME=	ircII-${VERSION}
CATEGORIES=	net
MASTER_SITES=	http://ircii.warped.com/ \
		http://ircii.warped.com/old/ \
		ftp://ircii.warped.com/pub/ircII/ \
		https://distfiles.macports.org/ircii/
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.eterna.com.au/ircii/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c crypto ssl termcap

FAKE_FLAGS=	INSTALL_IRC_NAME="ircII" \
		INSTALL="${INSTALL_PROGRAM}" INSTALL_DATA="${INSTALL_DATA}"

MODULES =	converters/libiconv
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	IRCLIB='$${datarootdir}/ircII' \
		CPPFLAGS="-I${LOCALBASE}/include" LIBS="-liconv"

NO_TEST=	Yes

post-install:
	@mv ${PREFIX}/bin/ircII-${VERSION} ${PREFIX}/bin/ircII

.include <bsd.port.mk>
