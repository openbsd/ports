# $OpenBSD: Makefile,v 1.32 2009/05/07 19:54:57 naddy Exp $

COMMENT=	Internet Relay Chat client

VERSION=	20060725
DISTNAME=	ircii-${VERSION}
PKGNAME=	ircII-${VERSION}p0
CATEGORIES=	net
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	Brad Smith <brad@comstyle.com>

HOMEPAGE=	http://www.eterna.com.au/ircii/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c termcap

MASTER_SITES=	ftp://ircii.warped.com/pub/ircII/ \
		ftp://ircii.warped.com/pub/ircII/old/

SUBST_VARS=	VERSION

FAKE_FLAGS=	INSTALL_IRC_NAME="ircII" \
		INSTALL="${INSTALL_PROGRAM}" INSTALL_DATA="${INSTALL_DATA}"

SEPARATE_BUILD=	simple
AUTOCONF_VERSION= 2.13
CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS=	--enable-ipv6 --exec-prefix="${PREFIX}"
CONFIGURE_ENV+=	IRCLIB='$$(DESTDIR)${PREFIX}/share/ircII'

NO_REGRESS=	Yes

post-install:
	@mv ${PREFIX}/bin/ircII-${VERSION} ${PREFIX}/bin/ircII

.include <bsd.port.mk>
