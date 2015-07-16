# $OpenBSD: Makefile,v 1.11 2015/07/16 23:57:19 ajacoutot Exp $

SHARED_ONLY =	Yes
COMMENT =	Unicode line breaking algorithm

DISTNAME =	Unicode-LineBreak-2014.06
CATEGORIES =	converters
MODULES =	cpan
REVISION =	0

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

CPAN_AUTHOR =		NEZUMI

AUTOCONF_VERSION =	2.59
AUTOMAKE_VERSION =	1.9


BUILD_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool #needs autotools macros

MAKE_ENV +=	AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

RUN_DEPENDS =		mail/p5-MIME-Charset

CONFIGURE_ARGS +=	--with-bundled-sombok \
			--disable-libthai

.include <bsd.port.mk>
