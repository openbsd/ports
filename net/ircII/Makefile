COMMENT=	Internet Relay Chat client

VERSION=	20240111
DISTNAME=	ircii-${VERSION}
PKGNAME=	ircII-${VERSION}
CATEGORIES=	net
SITES=		https://ircii.warped.com/ \
		https://ircii.warped.com/old/ \
		ftp://ircii.warped.com/pub/ircII/
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.eterna23.net/ircii/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c crypto curses iconv ssl

FAKE_FLAGS=	INSTALL="${INSTALL_PROGRAM}" INSTALL_DATA="${INSTALL_DATA}"

LIB_DEPENDS =	converters/libiconv

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		LIBS="-liconv"

SUBST_VARS=	VERSION

NO_TEST=	Yes

.include <bsd.port.mk>
