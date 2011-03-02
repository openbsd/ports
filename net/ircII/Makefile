# $OpenBSD: Makefile,v 1.35 2011/03/02 23:57:33 sthen Exp $

COMMENT=	Internet Relay Chat client

VERSION=	20081115
DISTNAME=	ircii-${VERSION}
PKGNAME=	ircII-${VERSION}
REVISION=	0
CATEGORIES=	net
MASTER_SITES=	ftp://ircii.warped.com/pub/ircII/ \
		ftp://ircii.warped.com/pub/ircII/old/
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.eterna.com.au/ircii/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	c termcap

SUBST_VARS=	VERSION

FAKE_FLAGS=	INSTALL_IRC_NAME="ircII" \
		INSTALL="${INSTALL_PROGRAM}" INSTALL_DATA="${INSTALL_DATA}"

SEPARATE_BUILD=	simple
AUTOCONF_VERSION= 2.13
CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS=	--exec-prefix="${PREFIX}"
CONFIGURE_ENV+=	IRCLIB='$$(DESTDIR)${PREFIX}/share/ircII'

NO_REGRESS=	Yes

post-install:
	@mv ${PREFIX}/bin/ircII-${VERSION} ${PREFIX}/bin/ircII

.include <bsd.port.mk>
