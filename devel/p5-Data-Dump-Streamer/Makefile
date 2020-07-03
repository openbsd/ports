# $OpenBSD: Makefile,v 1.16 2020/07/03 21:44:45 sthen Exp $

COMMENT=		accurately serialize a data structure as Perl code

DISTNAME =		Data-Dump-Streamer-2.40
CATEGORIES=		devel
REVISION =		0

MODULES=		cpan

# perl
PERMIT_PACKAGE=	Yes

WANTLIB += c perl

CONFIGURE_STYLE=	modbuild

BUILD_DEPENDS =		devel/p5-ExtUtils-Depends

RUN_DEPENDS=		converters/p5-JSON-XS \
			devel/p5-Algorithm-Diff \
			devel/p5-B-Utils \
			devel/p5-PadWalker

# prevent My::Builder from asking to setup a shortcut
pre-configure:
	echo "NODDS" > ${WRKSRC}/.answer

.include <bsd.port.mk>
