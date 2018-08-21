# $OpenBSD: Makefile,v 1.1.1.1 2018/08/21 09:28:20 fcambus Exp $

COMMENT =	HTML5 parsing library in pure C99

GH_ACCOUNT =	google
GH_PROJECT =	gumbo-parser
GH_TAGNAME =	v0.10.1

PKGNAME =	${DISTNAME:S/-parser//}

SHARED_LIBS +=	gumbo	0.0 # 1.0

CATEGORIES =	www

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool

TEST_DEPENDS =	devel/gtest

CONFIGURE_STYLE =	gnu

# Allow gtest detection
CONFIGURE_ENV =	LDFLAGS=-L${LOCALBASE}/lib

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

pre-configure:
	@cd ${WRKSRC} && ${AUTOCONF_ENV} ./autogen.sh

pre-test:
	@mkdir ${WRKSRC}/gtest
	@ln -s ${LOCALBASE}/include ${WRKSRC}/gtest/include

.include <bsd.port.mk>
