# $OpenBSD: Makefile,v 1.50 2017/10/13 14:56:22 naddy Exp $

COMMENT=	Internet Relay Chat client

VERSION=	20170704
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

WANTLIB=	c crypto iconv ssl termcap

FAKE_FLAGS=	INSTALL="${INSTALL_PROGRAM}" INSTALL_DATA="${INSTALL_DATA}"

LIB_DEPENDS =	converters/libiconv
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" LIBS="-liconv"

SUBST_VARS=	VERSION

NO_TEST=	Yes

.include <bsd.port.mk>
